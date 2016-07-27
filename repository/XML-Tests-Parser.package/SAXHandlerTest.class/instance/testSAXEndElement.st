tests
testSAXEndElement
	| parser arguments |

	(parser := SAXHandlerProxy on: self prefixedXMLSource)
		parseDocument.
	self assert: (parser wasSentSelectors: self prefixedXMLSourceSelectors).

	arguments := parser argumentsSentWith: #endElement:prefix:uri:localName:.
	self
		assert: arguments first = 'prefix:test';
		assert: arguments second = 'prefix';
		assert: arguments third =  'prefixNS';
		assert: arguments fourth = 'test'.