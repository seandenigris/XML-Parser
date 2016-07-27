tests
testResolvePrefix
	| namespaceScope |

	namespaceScope := self newNamespaceScope.
	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert: (namespaceScope resolvePrefix: prefix) isEmpty.
		namespaceScope mapPrefix: prefix to: uri.
		self assert: (namespaceScope resolvePrefix: prefix) = uri].

	self
		assert: (namespaceScope resolvePrefix: 'xml') = XMLNamespaceScope xmlNamespaceURI;
		assert: (namespaceScope resolvePrefix: 'xmlns') = XMLNamespaceScope xmlnsNamespaceURI.