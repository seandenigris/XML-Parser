tests
testConditionalSectionUnterminatedIncludes
	| handler parser |

	#('<![INCLUDE['
		'<![INCLUDE[<!--comment-->'
		'<![INCLUDE[<!--comment--><![INCLUDE['
		'<![INCLUDE[<!--comment--><![INCLUDE[ ]]>'
	) do: [:each |
		self
			should: [
				handler := SAXHandler on: each.
				parser := handler parser.
				parser tokenizer tokenContext: XMLExternalSubsetContext new.
				parser parseDocument]
			raise: XMLWellFormednessException].