accessing
dfaStateMatching: aMatcher
	| matchingNfaStates |

	matchingNfaStates := XMLNFAStateSet new.
	nfaStates do: [:state |
		(state matches: aMatcher)
			ifTrue: [state nextState addTo: matchingNfaStates]].

	^ matchingNfaStates
		ifNotEmpty: [dfaStateCache dfaStateFor: matchingNfaStates]
		ifEmpty: [nil].