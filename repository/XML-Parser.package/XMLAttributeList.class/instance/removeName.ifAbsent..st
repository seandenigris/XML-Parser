accessing
removeName: aString ifAbsent: aBlock
	^ (self removeNode: (self nodeNamed: aString ifAbsent: [^ aBlock value])) value