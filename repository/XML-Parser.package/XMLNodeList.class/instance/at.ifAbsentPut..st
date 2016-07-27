adding
at: anIndex ifAbsentPut: aValue
	^ self
		at: anIndex
		ifAbsent: [self at: anIndex put: aValue]