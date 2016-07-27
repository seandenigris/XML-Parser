tests
testResolvePrefixIfUnresolvable
	| namespaceScope |

	namespaceScope := self newNamespaceScope.
	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert:
			(namespaceScope
				resolvePrefix: prefix
				ifUnresolvable: [#unresolvable]) = #unresolvable.
		namespaceScope mapPrefix: prefix to: uri.
		self assert:
			(namespaceScope
				resolvePrefix: prefix
				ifUnresolvable: [#unresolvable]) = uri].

	self assert:
		(namespaceScope
			resolvePrefix: 'xml'
			ifUnresolvable: [#unresolvable]) = XMLNamespaceScope xmlNamespaceURI.
	self  assert:
		(namespaceScope
			resolvePrefix: 'xmlns'
			ifUnresolvable: [#unresolvable]) = XMLNamespaceScope xmlnsNamespaceURI.