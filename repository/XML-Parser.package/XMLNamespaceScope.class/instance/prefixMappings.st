accessing
prefixMappings
	^ prefixMappings ifNil: [prefixMappings := OrderPreservingStringDictionary new: 5]