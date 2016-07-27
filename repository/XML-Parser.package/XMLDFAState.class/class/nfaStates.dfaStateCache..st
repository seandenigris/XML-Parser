instance creation
nfaStates: anNfaStateSet dfaStateCache: aDfaStateCache
	^ self new
		setNFAStates: anNfaStateSet
		dfaStateCache: aDfaStateCache