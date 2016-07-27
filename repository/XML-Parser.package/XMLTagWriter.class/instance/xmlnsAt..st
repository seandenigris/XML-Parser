accessing
xmlnsAt: aPrefix
	^ self prefixMappings at: aPrefix ifAbsent: ['']