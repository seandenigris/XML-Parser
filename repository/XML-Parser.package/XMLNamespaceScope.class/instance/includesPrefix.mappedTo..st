testing
includesPrefix: aPrefix mappedTo: aUri
	^ (self prefixMappingsAt: aPrefix ifAbsent: [^ false]) = aUri