tests
testCopy
	| scope oldPrefixMappings |

	scope := self newNamespaceScopeWithNamespaces.
	oldPrefixMappings := scope prefixMappings.
	self assert: scope copy prefixMappings == oldPrefixMappings.