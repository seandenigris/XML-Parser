tests
testConditionalSectionNestedIgnores
	| xml |

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
			(SAXHandler on: (xml format: (Array with: ']]')))
				parser
					context: XMLExternalSubsetContext new;
					parseDocument]
		raise: XMLWellFormednessException.
	self
		should: [
			(SAXHandler on: (xml format: (Array with: ']]>')))
				parser
					context: XMLExternalSubsetContext new;
					parseDocument]
		raise: XMLWellFormednessException.