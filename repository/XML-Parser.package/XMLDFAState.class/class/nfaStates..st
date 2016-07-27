instance creation
nfaStates: anNfaStateSet
	^ self
		nfaStates: anNfaStateSet
		cachedDFAStates: Dictionary new