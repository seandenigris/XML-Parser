tests
testMapPrefixTo
	| scope oldPrefixMappings |

	scope := self newNamespaceScope.
	self namespaces keysAndValuesDo: [:prefix :uri |
		oldPrefixMappings := scope prefixMappings.
		scope
			mapPrefix: prefix
			to: uri.
		"ensure prefixMappings is copied when adding"
		self
			assert: (scope prefixMappings at: prefix) = uri;
			deny: scope prefixMappings = oldPrefixMappings;
			deny: scope prefixMappings == oldPrefixMappings.

		oldPrefixMappings := scope prefixMappings.
		scope
			mapPrefix: prefix
			to: uri.
		"ensure prefixMappings is copied, even if it is unchanged"
		self
			assert: (scope prefixMappings at: prefix) = uri;
			assert: scope prefixMappings = oldPrefixMappings;
			deny: scope prefixMappings == oldPrefixMappings].
	self assert: scope prefixMappings associations asArray = self namespaces associations asArray.

	self namespaces keysAndValuesDo: [:prefix :uri |
		scope
			mapPrefix: prefix
			to: 'newNS'.
		self
			assert: (scope prefixMappings at: prefix) = 'newNS';
			deny: scope prefixMappings = oldPrefixMappings;
			deny: scope prefixMappings == oldPrefixMappings].