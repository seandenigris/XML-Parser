accessing
at: anIndex
	^ self at: anIndex ifAbsent: [self defaultValue]