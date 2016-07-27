private
clear
	cachedStates
		removeAll;
		at: firstState nfaStates
		put: firstState