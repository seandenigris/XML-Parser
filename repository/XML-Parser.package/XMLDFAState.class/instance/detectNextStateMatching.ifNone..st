enumerating
detectNextStateMatching: aMatcher ifNone: aNoneBlock
	^ (self transitions
		at: aMatcher
		ifAbsentPut: [self dfaStateMatching: aMatcher])
			ifNil: [aNoneBlock value]