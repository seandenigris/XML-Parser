accessing
removeNodeNamed: aString ifAbsent: aBlock
	^ (self remove: (self nodeNamed: aString ifAbsent: [^ aBlock value])) value