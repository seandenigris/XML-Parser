testing
includesPrefix: aPrefix mappedTo: aUri
	^ (self prefixMappingAt: aPrefix ifAbsent: [^ false]) = aUri