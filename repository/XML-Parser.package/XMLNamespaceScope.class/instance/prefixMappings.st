accessing
prefixMappings
	^ prefixMappings ifNil: [prefixMappings := XMLOrderPreservingDictionary new]