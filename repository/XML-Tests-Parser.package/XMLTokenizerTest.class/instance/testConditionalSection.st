tests
testConditionalSection
	| tokenizer |

	tokenizer :=
		XMLWellFormedParserTokenizer
			driver: nil
			on:
				'<![INCLUDE [included',
				'<![ IGNORE [ignored; <![INCLUDE[ignored;]]> ignored.]]>',
				', included]]>, included.'.
	tokenizer tokenContext: XMLExternalSubsetContext new.
	tokenizer nextToken.
	self assert:
		(String streamContents: [:stream | | streamReader |
			streamReader := tokenizer streamReader.
			[streamReader atEnd]
				whileFalse: [stream nextPut: streamReader next]]) =
			'included, included, included.'.

	self
		should: [SAXHandler parse: '<!DOCTYPE root [ <![IGNORE[<!--ignored-->]]> ]><root/>']
		raise: XMLWellFormednessException.