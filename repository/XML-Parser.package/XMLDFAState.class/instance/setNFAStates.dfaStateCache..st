initialization
setNFAStates: anNfaStateSet dfaStateCache: aDfaStateCache
	nfaStates := anNfaStateSet.
	dfaStateCache := (aDfaStateCache ifNil: [XMLDFAStateCache firstState: self]).