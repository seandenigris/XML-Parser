accessing
xmlnsAt: aPrefix ifAbsentPut: aUri
	^ self prefixMappings at: aPrefix ifAbsentPut: aUri