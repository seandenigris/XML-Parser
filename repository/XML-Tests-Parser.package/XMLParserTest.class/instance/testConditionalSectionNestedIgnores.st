tests
testConditionalSectionNestedIgnores
	| xml handler parser |

	xml := '
		<![ IGNORE [
			<!--ignored terminator {1} -->
			<![ INCLUDE [
				<!ENTITY % comment "<!--ignored terminator {1} -->">
				%comment;
			]]>
			%comment;
		]]>'.
	self
		shouldnt: [
			handler := SAXHandler on: (xml format: (Array with: ']]')).
			parser := handler parser.
			parser tokenizer tokenContext: XMLExternalSubsetContext new.
			parser parseDocument]
		raise: XMLWellFormednessException.
	self
		should: [
			handler := SAXHandler on: (xml format: (Array with: ']]>')).
			parser := handler parser.
			parser tokenizer tokenContext: XMLExternalSubsetContext new.
			parser parseDocument]
		raise: XMLWellFormednessException.