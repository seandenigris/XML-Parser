tests
testPrefixMappingAtIfAbsent
	| scope |

	scope := self newNamespaceScope.
	self
		assert: (scope prefixMappingAt: 'xml' ifAbsent: [#absent]) = #absent;
		assert: (scope prefixMappingAt: 'xmlns'ifAbsent: [#absent]) = #absent.

	"cannot map xmlns prefix, but can map xml"
	scope mapPrefix: 'xml' to: XMLNamespaceScope xmlNamespaceURI.
	self assert:
		(scope
			prefixMappingAt: 'xml'
			ifAbsent: [#absent]) = XMLNamespaceScope xmlNamespaceURI.

	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert:
			(scope
				prefixMappingAt: prefix
				ifAbsent: [#absent]) = #absent.
		scope mapPrefix: prefix to: uri.
		self assert:
			(scope
				prefixMappingAt: prefix
				ifAbsent: [#absent]) = uri].