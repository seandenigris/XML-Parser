tests
testConditionalSectionNestedIncludes
	| xml |

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
			(SAXHandler on: xml) parser
				context: XMLExternalSubsetContext new;
				parseDocument]
		raise: XMLValidationException.