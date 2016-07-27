tests
testResolvePrefix
	| element |

	(element := self nodeClass new)
		declareNamespaces: self namespaces.
	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert: (element resolvePrefix: prefix) = uri].
	self
		assert: (element resolvePrefix: 'xml') = XMLNamespaceScope xmlNamespaceURI;
		assert: (element resolvePrefix: 'xmlns') = XMLNamespaceScope xmlnsNamespaceURI;
		assert: (element resolvePrefix: 'undeclared') isEmpty.