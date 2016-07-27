tests
testConditionalSectionUnterminatedIignores
	#('<![IGNORE['
		'<![IGNORE[<!--comment-->'
		'<![IGNORE[<!--comment--><![IGNORE['
		'<![IGNORE[<!--comment--><![IGNORE[ ]]>'
	) do: [:each |
		self
			should: [
				(SAXHandler on: each) parser
					context: XMLExternalSubsetContext new;
					parseDocument]
			raise: XMLWellFormednessException].