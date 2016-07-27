tests
testNewElementNamedNamespaceURI
	| node element |

	node := self nodeClass new.
	element := node newElementNamed: 'prefix:test' namespaceURI: 'prefixNS'.
	self
		assert: element isElement;
		assert: element configuration == node configuration;
		assert: element nodeFactory == node nodeFactory;
		assert: element name = 'prefix:test';
		assert: element namespaceURI = 'prefixNS'.