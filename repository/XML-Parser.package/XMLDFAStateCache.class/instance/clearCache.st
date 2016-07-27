private
clearCache
	cachedStates
		removeAll;
		at: firstState nfaStates
		put: firstState