tests
testConditionalSectionLabelReplacementIgnore
	| handler parser |

	#('<!ENTITY % label "{1}">
		<![%label;[ <malformed-xml/> ]]>'
		'<!ENTITY % label "{1}">
		<![ %label; [ <malformed-xml/> ]]>'
		) do: [:each |
		self
			should: [
				handler := SAXHandler on: (each format: (Array with: 'INCLUDE')).
				parser := handler parser.
				parser tokenizer tokenContext: XMLExternalSubsetContext new.
				parser parseDocument]
			raise: XMLWellFormednessException.
		self
			shouldnt: [
				handler := SAXHandler on: (each format: (Array with: 'IGNORE')).
				parser := handler parser.
				parser tokenizer tokenContext: XMLExternalSubsetContext new.
				parser parseDocument]
			raise: XMLWellFormednessException]