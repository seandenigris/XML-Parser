accessing
dfaStateFor: aStateSet
	^ cachedDFAStates
		at: aStateSet
		ifAbsent: [self addDFAState: (aStateSet asDFAStateWithStateCache: self)]