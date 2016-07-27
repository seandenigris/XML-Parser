accessing
nodeNamed: aString ifAbsent: aBlock
	^ self attributesByName at: aString ifAbsent: aBlock