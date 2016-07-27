building
buildDFA
	| firstState |

	"each key is an IdentitySet of NFA states and each value is a DFA state"
	cachedDfaStates := Dictionary new.
	(firstState := XMLDFAState new) isAccepting: nfa isAccepting.
	self
		buildDFAState: firstState
		withNFAStates: (Array with: nfa).
	^ firstState.