tests
testSAXStartElement
	| parser arguments |

	(parser := SAXHandlerProxy saxHandler: (SAXHandler on: self prefixedXMLSource))
		parseDocument.
	self assert: (parser wasSentSelectors: self prefixedXMLSourceSelectors).

	arguments := parser argumentsSentWith: #startElement:prefix:uri:localName:attributes:.
	self
		assert: arguments first = 'prefix:test';
		assert: arguments second = 'prefix';
		assert: arguments third =  'prefixNS';
		assert: arguments fourth = 'test';
		assert: arguments fifth = (Dictionary with: 'name' -> 'value').