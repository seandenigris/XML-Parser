accessing
removeNodeNamed: aString
	^ self removeNodeNamed: aString ifAbsent: [self defaultValue]