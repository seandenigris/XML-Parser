tests
testSAXEndElemenNamespacesDisabled
	| parser arguments |

	(parser := SAXHandlerProxy saxHandler: (SAXHandler on: self prefixedXMLSource))
		usesNamespaces: false;
		parseDocument.
	self assert: (parser wasSentSelectors: self prefixedXMLSourceSelectorsNamespacesDisabled).

	arguments := parser argumentsSentWith: #endElement:prefix:uri:localName:.
	self
		assert: arguments first = 'prefix:test';
		assert: arguments second = 'prefix';
		assert: arguments third isEmpty;
		assert: arguments fourth = 'test'.