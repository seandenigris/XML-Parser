tests
testConditionalSectionLabelReplacementIgnore
	#('<!ENTITY % label "{1}">
		<![%label;[ <malformed-xml/> ]]>'
		'<!ENTITY % label "{1}">
		<![ %label; [ <malformed-xml/> ]]>'
		) do: [:each |
		self
			should: [
				(SAXHandler on: (each format: (Array with: 'INCLUDE')))
					parser
						context: XMLExternalSubsetContext new;
						parseDocument]
			raise: XMLWellFormednessException.
		self
			shouldnt: [
				(SAXHandler on: (each format: (Array with: 'IGNORE')))
					parser
						context: XMLExternalSubsetContext new;
						parseDocument]
			raise: XMLWellFormednessException]