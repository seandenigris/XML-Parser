tests
testConditionalSectionUnterminatedInclude
	#('<![INCLUDE['
		'<![INCLUDE[<!--comment-->'
		'<![INCLUDE[<!--comment--><![INCLUDE['
		'<![INCLUDE[<!--comment--><![INCLUDE[ ]]>'
	) do: [:each |
		self
			should: [
				(SAXHandler on: each) parser
					context: XMLExternalSubsetContext new;
					parseDocument]
			raise: XMLWellFormednessException].