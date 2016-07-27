accessing
xmlnsAt: aPrefix ifAbsent: aBlock
	^ self prefixMappings at: aPrefix ifAbsent: aBlock