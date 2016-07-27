accessing
initializeDFAStateTransitions
	| matchersAndTransitionStates matchersWithAcceptingTransitionStates dfaState |

	matchersAndTransitionStates := Dictionary new.
	matchersWithAcceptingTransitionStates := Set new.
	nfaStates do: [:state |
		state transitionsDo: [:transition |
			(matchersAndTransitionStates
				at: transition matcher
				ifAbsentPut: [IdentitySet new: 3]) add: transition nextState.
			transition nextState isAccepting
				ifTrue: [matchersWithAcceptingTransitionStates add: transition matcher]]].

	matchersAndTransitionStates keysAndValuesDo: [:matcher :transitionStates |
		dfaState :=
			cachedDfaStates
				at: transitionStates
				ifAbsentPut: [
					XMLDFAState
						nfaStates: transitionStates
						cachedDFAStates: cachedDfaStates
						isAccepting: (matchersWithAcceptingTransitionStates includes: matcher)].
		self addTransition:
			(XMLDFATransition
				matcher: matcher
				nextState: dfaState)].