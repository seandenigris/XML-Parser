tests
testHasDefaultNamespace
	| namespaceScope |

	namespaceScope := self newNamespaceScope.
	self deny: namespaceScope hasDefaultNamespace.

	namespaceScope defaultNamespace: 'test'.
	self assert: namespaceScope hasDefaultNamespace.

	namespaceScope defaultNamespace: ''.
	self assert: namespaceScope hasDefaultNamespace.

	namespaceScope unmapPrefix: ''.
	self deny: namespaceScope hasDefaultNamespace.