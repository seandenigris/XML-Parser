initialization
setNFAStates: anNfaStateSet cachedDFAStates: aDfaStateCache
	nfaStates := anNfaStateSet.
	cachedDfaStates := aDfaStateCache.

	self addToCache.