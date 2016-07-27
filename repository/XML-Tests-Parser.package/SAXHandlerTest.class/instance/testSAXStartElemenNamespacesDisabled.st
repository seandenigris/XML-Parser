tests
testSAXStartElemenNamespacesDisabled
	| parser arguments |

	(parser := SAXHandlerProxy saxHandler: (SAXHandler on: self prefixedXMLSource))
		usesNamespaces: false;
		parseDocument.
	self assert: (parser wasSentSelectors: self prefixedXMLSourceSelectorsNamespacesDisabled).

	arguments := parser argumentsSentWith: #startElement:prefix:uri:localName:attributes:.
	self
		assert: arguments first = 'prefix:test';
		assert: arguments second = 'prefix';
		assert: arguments third isEmpty;
		assert: arguments fourth = 'test'.
	self assert:
		arguments fifth =
			(Dictionary
				with: 'xmlns:prefix' -> 'prefixNS'
				with: 'xmlns' -> 'defaultNS'
				with: 'name' -> 'value').