tests
testDefaultNamespace
	| namespaceScope oldPrefixMappings |

	namespaceScope := self newNamespaceScope.
	self assert: namespaceScope defaultNamespace isEmpty.

	oldPrefixMappings := namespaceScope prefixMappings.
	namespaceScope defaultNamespace: 'test'.
	self
		assert: namespaceScope defaultNamespace = 'test';
		assert: (namespaceScope prefixMappings at: '') = 'test';
		deny: namespaceScope prefixMappings = oldPrefixMappings.

	namespaceScope unmapPrefix: ''.
	self assert: namespaceScope defaultNamespace isEmpty.