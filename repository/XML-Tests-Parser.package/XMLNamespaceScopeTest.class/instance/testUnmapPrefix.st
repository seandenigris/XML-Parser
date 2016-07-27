tests
testUnmapPrefix
	| scope oldPrefixMappings unmappedPrefix |

	scope := self newNamespaceScopeWithNamespaces.
	oldPrefixMappings := scope prefixMappings.
	unmappedPrefix := oldPrefixMappings keys anyOne.
	scope unmapPrefix: unmappedPrefix.
	self
		deny: scope prefixMappings = oldPrefixMappings;
		deny: scope prefixMappings == oldPrefixMappings.