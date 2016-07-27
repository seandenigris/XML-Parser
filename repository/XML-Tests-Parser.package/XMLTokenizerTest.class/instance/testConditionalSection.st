tests
testConditionalSection
	| tokenizer |

	tokenizer :=
		XMLTokenizer
			driver: nil
			on:
			'<![INCLUDE [included',
			'<![ IGNORE [ignored; <![INCLUDE[ignored;]]> ignored.]]>',
			', included]]>, included.'.
	tokenizer tokenContext enterExternalSubset.
	tokenizer nextToken.
	self assert: tokenizer streamReader upToEnd = 'included, included, included.'.

	self
		should: [SAXHandler parse: '<!DOCTYPE root [ <![IGNORE[<!--ignored-->]]> ]><root/>']
		raise: XMLWellFormednessException.