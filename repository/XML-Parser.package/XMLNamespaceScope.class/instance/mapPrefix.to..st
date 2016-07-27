accessing
mapPrefix: aPrefix to: aUri
	(aPrefix isEmptyOrNil or: [aPrefix = 'xmlns'])
		ifTrue: [self defaultNamespace: aUri]
		ifFalse: [self prefixMappings at: aPrefix put: (aUri ifNil: [''])]