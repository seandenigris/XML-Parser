enumerating
detectNextStateMatching: aMatcher ifNone: aBlock
	^ (self transitions
		at: aMatcher
		ifAbsentPut: [self dfaStateMatching: aMatcher])
			ifNil: [aBlock value]