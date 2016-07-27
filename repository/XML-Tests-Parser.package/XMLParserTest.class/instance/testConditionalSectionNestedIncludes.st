tests
testConditionalSectionNestedIncludes
	| xml handler parser |

	xml := '
		<![ INCLUDE [
			<!--ignored terminator ]]> -->
			<![ INCLUDE [
				<!ENTITY % comment "<!--ignored terminator ]]> -->">
				%comment;
			]]>
			%comment;
		]]>
		%comment;'.
	self
		shouldnt: [
			handler := SAXHandler on: xml.
			parser := handler parser.
			parser tokenizer tokenContext: XMLExternalSubsetContext new.
			parser parseDocument]
		raise: XMLValidationException.