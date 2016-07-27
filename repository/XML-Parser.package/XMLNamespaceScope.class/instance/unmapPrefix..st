accessing
unmapPrefix: aPrefix
	self prefixMappings
		removeKey: aPrefix
		ifAbsent: [XMLNamespaceException signal: 'Prefix ', aPrefix, ' cannot be unmapped']