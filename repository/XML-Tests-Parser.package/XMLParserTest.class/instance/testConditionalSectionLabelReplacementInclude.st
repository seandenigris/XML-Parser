tests
testConditionalSectionLabelReplacementInclude
	| handler parser |

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
				handler := SAXHandler on: (each format: (Array with: 'INCLUDE')).
				parser := handler parser.
				parser tokenizer tokenContext: XMLExternalSubsetContext new.
				parser parseDocument]
			raise: XMLValidationException.
		self
			should: [
				handler := SAXHandler on: (each format: (Array with: 'IGNORE')).
				parser := handler parser.
				parser tokenizer tokenContext: XMLExternalSubsetContext new.
				parser parseDocument]
			raise: XMLValidationException].