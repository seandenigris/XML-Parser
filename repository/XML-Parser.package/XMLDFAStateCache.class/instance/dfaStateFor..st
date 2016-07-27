accessing
dfaStateFor: aStateSet
	^ cachedStates
		at: aStateSet
		ifAbsent: [self addDFAState: (aStateSet asDFAStateWithStateCache: self)]