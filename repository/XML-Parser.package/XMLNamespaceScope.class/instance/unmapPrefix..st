accessing
unmapPrefix: aPrefix
	self prefixMappings
		removeKey: aPrefix
		ifAbsent: [
			XMLNamespaceException signal:
				'Prefix "', aPrefix, '" was not mapped and cannot be unmapped']