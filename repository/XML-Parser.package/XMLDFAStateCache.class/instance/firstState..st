accessing
firstState: aFirstState
	firstState := aFirstState.

	(cachedStates := Dictionary new)
		at: firstState nfaStates
		put: firstState.