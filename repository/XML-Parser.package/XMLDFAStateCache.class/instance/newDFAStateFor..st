private
newDFAStateFor: aStateSet
	^ XMLDFAState
		nfaStates: aStateSet
		dfaStateCache: self.