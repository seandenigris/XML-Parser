accessing
at: anIndex
	^ collection at: anIndex ifAbsent: [self defaultValue]