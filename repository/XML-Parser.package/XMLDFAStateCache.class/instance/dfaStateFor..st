accessing
dfaStateFor: aStateSet
	^ cachedStates
		at: aStateSet
		ifAbsent: [
			cachedStates size >= self maxCachedStates
				ifTrue: [self clearCache].

			cachedStates
				at: aStateSet
				put: (self newDFAStateFor: aStateSet)]