tests
testResolvePrefixIfUnresolvable
	| scope |

	scope := self newNamespaceScope.
	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert:
			(scope
				resolvePrefix: prefix
				ifUnresolvable: [#unresolvable]) = #unresolvable.
		scope mapPrefix: prefix to: uri.
		self assert:
			(scope
				resolvePrefix: prefix
				ifUnresolvable: [#unresolvable]) = uri].

	self assert:
		(scope
			resolvePrefix: 'xml'
			ifUnresolvable: [#unresolvable]) = scope xmlNamespaceURI.

	self  assert:
		(scope
			resolvePrefix: 'xmlns'
			ifUnresolvable: [#unresolvable]) = scope xmlnsNamespaceURI.