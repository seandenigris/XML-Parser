tests
testConditionalSectionUnterminatedIignores
	| handler parser |

	#('<![IGNORE['
		'<![IGNORE[<!--comment-->'
		'<![IGNORE[<!--comment--><![IGNORE['
		'<![IGNORE[<!--comment--><![IGNORE[ ]]>'
	) do: [:each |
		self
			should: [
				handler := SAXHandler on: each.
				parser := handler parser.
				parser tokenizer tokenContext: XMLExternalSubsetContext new.
				parser parseDocument]
			raise: XMLWellFormednessException].