tests
testPrefixMappingAt
	| namespaceScope |

	namespaceScope := self newNamespaceScope.
	self
		assert: (namespaceScope prefixMappingAt: 'xml') isEmpty;
		assert: (namespaceScope prefixMappingAt: 'xmlns') isEmpty.

	"cannot map xmlns prefix, but can map xml"
	namespaceScope mapPrefix: 'xml' to: XMLNamespaceScope xmlNamespaceURI.
	self assert: (namespaceScope prefixMappingAt: 'xml') = XMLNamespaceScope xmlNamespaceURI.

	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert: (namespaceScope prefixMappingAt: prefix) isEmpty.
		namespaceScope mapPrefix: prefix to: uri.
		self assert: (namespaceScope prefixMappingAt: prefix) = uri].