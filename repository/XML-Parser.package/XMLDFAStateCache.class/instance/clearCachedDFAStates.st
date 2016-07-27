private
clearCachedDFAStates
	cachedDFAStates
		removeAll;
		at: firstDFAState nfaStates
		put: firstDFAState