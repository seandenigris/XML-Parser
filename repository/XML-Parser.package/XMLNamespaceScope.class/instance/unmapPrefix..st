accessing
unmapPrefix: aPrefix
	(self includesPrefix: aPrefix)
		ifFalse: [XMLNamespaceException signal: 'Prefix ', aPrefix, ' cannot be unmapped'].

	self prefixMappings removeKey: aPrefix.