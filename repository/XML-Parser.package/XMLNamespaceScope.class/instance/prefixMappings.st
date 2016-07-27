accessing
prefixMappings
	^ prefixMappings ifNil: [prefixMappings := OrderPreservingDictionary defaultValue: '']