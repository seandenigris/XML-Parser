tests
testPrefixMappingAt
	| scope |

	scope := self newNamespaceScope.
	self
		assert: (scope prefixMappingAt: 'xml') isEmpty;
		assert: (scope prefixMappingAt: 'xmlns') isEmpty.

	"cannot map xmlns prefix, but can map xml"
	scope mapPrefix: 'xml' to: XMLNamespaceScope xmlNamespaceURI.
	self assert: (scope prefixMappingAt: 'xml') = XMLNamespaceScope xmlNamespaceURI.

	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert: (scope prefixMappingAt: prefix) isEmpty.
		scope mapPrefix: prefix to: uri.
		self assert: (scope prefixMappingAt: prefix) = uri].