tests
testMapPrefixTo
	| scope oldPrefixMappings association |

	scope := self newNamespaceScopeWithNamespaces.
	oldPrefixMappings := scope prefixMappings.
	association := oldPrefixMappings associations anyOne.
	scope
		mapPrefix: association key
		to: association value.
	self
		assert: scope prefixMappings = oldPrefixMappings;
		deny: scope prefixMappings == oldPrefixMappings.
	scope
		mapPrefix: association key
		to: 'newNS'.
	self
		deny: scope prefixMappings = oldPrefixMappings;
		deny: scope prefixMappings == oldPrefixMappings.