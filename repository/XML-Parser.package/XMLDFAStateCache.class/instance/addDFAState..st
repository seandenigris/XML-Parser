adding
addDFAState: aDFAState
	cachedStates size >= self maxCachedStates
		ifTrue: [self clear].
	^ cachedStates
		at: aDFAState nfaStates
		put: aDFAState.