accessing
nodeNamed: aString
	^ self nodeNamed: aString ifAbsent: [self defaultValue]