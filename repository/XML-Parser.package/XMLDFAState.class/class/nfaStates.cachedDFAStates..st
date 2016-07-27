instance creation
nfaStates: anNfaStateSet cachedDFAStates: aDfaStateCache
	^ self new
		setNFAStates: anNfaStateSet
		cachedDFAStates: aDfaStateCache