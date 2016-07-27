accessing
nodeNamed: aString ifAbsent: aBlock
	^ self nodesByName at: aString ifAbsent: aBlock