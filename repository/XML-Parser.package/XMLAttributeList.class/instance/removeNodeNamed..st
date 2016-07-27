accessing
removeNodeNamed: aString
	^ self removeNodeNamed: aString ifAbsent: [nil]