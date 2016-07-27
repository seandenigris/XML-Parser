accessing
unmapPrefix: aPrefix
	(aPrefix = 'xml' or: [aPrefix = 'xmlns'])
		ifTrue: [XMLNamespaceException signal: 'Cannot unmap "xmlns" or "xml" prefixes'].

	self prefixMappings
		removeKey: aPrefix
		ifAbsent: [
			XMLNamespaceException signal:
				'Prefix "', aPrefix, '" was not mapped and cannot be unmapped']