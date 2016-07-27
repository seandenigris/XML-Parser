tests
testHasNamespaces
	| namespaceScope |

	namespaceScope := self newNamespaceScope.
	self deny: namespaceScope hasNamespaces.

	namespaceScope mapPrefixesAndURIs: self namespaces.
	self assert: namespaceScope hasNamespaces.
	self namespaces keysDo: [:each |
		self assert: namespaceScope hasNamespaces.
		namespaceScope unmapPrefix: each].
	self deny: namespaceScope hasNamespaces.