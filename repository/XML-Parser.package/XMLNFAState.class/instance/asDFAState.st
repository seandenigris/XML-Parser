converting
asDFAState
	| nfaStates |

	nfaStates := XMLNFAStateSet new.
	self addTo: nfaStates.

	^ XMLDFAState nfaStates: nfaStates.