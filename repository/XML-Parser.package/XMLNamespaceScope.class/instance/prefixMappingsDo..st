enumerating
prefixMappingsDo: aTwoArgumentBlock
	self mappedPrefixes do: [:namespace |
		aTwoArgumentBlock
			value: namespace
			value: (self resolvePrefix: namespace)]