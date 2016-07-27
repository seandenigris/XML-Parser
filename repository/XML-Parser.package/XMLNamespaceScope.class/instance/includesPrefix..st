testing
includesPrefix: aPrefix
	self prefixMappingsAt: aPrefix ifAbsent: [^ false].
	^ true.