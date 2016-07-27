tests
testCopy
	| scope |

	scope := self newNamespaceScopeWithNamespaces.
	self assert: scope prefixMappings == scope copy prefixMappings.