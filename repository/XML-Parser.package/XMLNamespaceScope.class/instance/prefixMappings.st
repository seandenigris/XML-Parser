accessing
prefixMappings
	^ prefixMappings ifNil: [prefixMappings := OrderPreservingDictionary new: 5 withDefaultValue: '']