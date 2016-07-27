tests-xmltokenizer
testConditionalSection
	| tokenizer |

	tokenizer :=
		XMLTokenizer
			driver: nil
			on:
			'<![INCLUDE [included',
			'<![ IGNORE [ignored; <![INCLUDE[ignored;]]> ignored.]]>',
			', included]]>, included.'.
	tokenizer tokenContext enterInternalSubset.
	tokenizer nextToken.
	self assert: tokenizer streamReader upToEnd = 'included, included, included.'