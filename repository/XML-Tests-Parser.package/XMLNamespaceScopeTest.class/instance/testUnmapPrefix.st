tests
testUnmapPrefix
	| scope oldPrefixMappings |

	scope := self newNamespaceScopeWithNamespaces.
	self namespaces keysAndValuesDo: [:prefix :uri |
		oldPrefixMappings := scope prefixMappings.
		scope unmapPrefix: prefix.
		"ensure prefixMappings is copied when removing"
		self
			deny: (scope prefixMappings includesKey: prefix);
			deny: scope prefixMappings = oldPrefixMappings;
			deny: scope prefixMappings == oldPrefixMappings.

		self
			should: [scope unmapPrefix: prefix]
			raise: XMLNamespaceException].
	self assert: scope prefixMappings isEmpty.