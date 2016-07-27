accessing
dfaStateMatching: aMatcher
	| matchingNfaStates |

	matchingNfaStates := XMLNFAStateSet new.
	nfaStates do: [:state |
		(state matches: aMatcher)
			ifTrue: [state nextState addTo: matchingNfaStates]].
	matchingNfaStates
		ifEmpty: [ ^ nil].

	^ cachedDfaStates
		at: matchingNfaStates
		ifAbsent: [
			self class
				nfaStates: matchingNfaStates
				cachedDFAStates: cachedDfaStates].