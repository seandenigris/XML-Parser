converting
asDFA
	| cachedDfaStates |

	"each key is an IdentitySet of NFA states and each value is a DFA state"
	cachedDfaStates := Dictionary new.

	^ XMLDFAState
		nfaStates: (Array with: self)
		cachedDFAStates: cachedDfaStates
		isAccepting: self isAccepting.