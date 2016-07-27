accessing
queryAt: aName ifAbsent: aBlock
	^ self query
		at: aName
		ifAbsent: aBlock