accessing
unmapPrefix: aPrefix
	self prefixMappings
		removeKey: aPrefix
		ifAbsent: [
			XMLNamespaceException
				formatSignal: 'Prefix "{1}" was not mapped and cannot be unmapped'
				with: aPrefix]