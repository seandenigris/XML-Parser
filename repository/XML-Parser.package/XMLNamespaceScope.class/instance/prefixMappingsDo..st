enumerating
prefixMappingsDo: aTwoArgumentBlock
	self prefixMappings keysAndValuesDo: [:prefix :uri |
		aTwoArgumentBlock value: prefix value: uri]