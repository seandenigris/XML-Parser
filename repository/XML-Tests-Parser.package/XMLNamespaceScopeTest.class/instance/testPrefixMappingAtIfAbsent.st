tests
testPrefixMappingAtIfAbsent
	| namespaceScope |

	namespaceScope := self newNamespaceScope.
	self
		assert: (namespaceScope prefixMappingAt: 'xml' ifAbsent: [#absent]) = #absent;
		assert: (namespaceScope prefixMappingAt: 'xmlns'ifAbsent: [#absent]) = #absent.

	"cannot map xmlns prefix, but can map xml"
	namespaceScope mapPrefix: 'xml' to: XMLNamespaceScope xmlNamespaceURI.
	self assert:
		(namespaceScope
			prefixMappingAt: 'xml'
			ifAbsent: [#absent]) = XMLNamespaceScope xmlNamespaceURI.

	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert:
			(namespaceScope
				prefixMappingAt: prefix
				ifAbsent: [#absent]) = #absent.
		namespaceScope mapPrefix: prefix to: uri.
		self assert:
			(namespaceScope
				prefixMappingAt: prefix
				ifAbsent: [#absent]) = uri].