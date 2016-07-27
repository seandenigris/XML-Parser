adding
addDFAState: aDFAState
	cachedDFAStates size >= self maxCachedDFAStates
		ifTrue: [self clearCachedDFAStates].
	^ cachedDFAStates
		at: aDFAState nfaStates
		put: aDFAState.