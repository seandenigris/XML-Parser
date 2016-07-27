initialization
setNFAStates: anNFAStateSet dfaStateCache: aDFAStateCache
	nfaStates := anNFAStateSet.
	dfaStateCache := (aDFAStateCache ifNil: [XMLDFAStateCache firstState: self]).