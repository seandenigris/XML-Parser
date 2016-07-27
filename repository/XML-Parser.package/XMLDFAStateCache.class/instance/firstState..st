accessing
firstState: aFirstState
	firstState := aFirstState.

	(cachedStates := Dictionary new: 5)
		at: firstState nfaStates
		put: firstState.