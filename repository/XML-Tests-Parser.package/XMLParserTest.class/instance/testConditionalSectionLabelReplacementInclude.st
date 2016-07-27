tests
testConditionalSectionLabelReplacementInclude
	#('<!ENTITY % label "{1}">
		<![%label;[
			<!ENTITY % comment "<!--comment-->">
		]]> %comment;'
		'<!ENTITY % label "{1}">
		<![ %label; [
			<!ENTITY % comment "<!--comment-->">
		]]> %comment;'
	) do: [:each |
		self
			shouldnt: [
				(SAXHandler on: (each format: (Array with: 'INCLUDE')))
					parser
						context: XMLExternalSubsetContext new;
						parseDocument]
			raise: XMLValidationException.
		self
			should: [
				(SAXHandler on: (each format: (Array with: 'IGNORE')))
					parser
						context: XMLExternalSubsetContext new;
						parseDocument]
			raise: XMLValidationException].