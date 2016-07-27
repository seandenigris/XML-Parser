accessing
at: anIndex ifAbsent: aBlock
	^ (anIndex between: 1 and: self size)
		ifTrue: [super at: anIndex]
		ifFalse: [aBlock value]