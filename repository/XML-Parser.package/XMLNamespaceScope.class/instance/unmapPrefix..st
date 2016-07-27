accessing
unmapPrefix: aPrefix
	self prefixMappings removeKey: aPrefix ifAbsent: [nil]