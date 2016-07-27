instance creation
nfaStates: anNfaStateCollection cachedDFAStates: aDfaStateCache isAccepting: aBoolean
	^ self new
		setNFAStates: anNfaStateCollection
		cachedDFAStates: aDfaStateCache
		isAccepting: aBoolean