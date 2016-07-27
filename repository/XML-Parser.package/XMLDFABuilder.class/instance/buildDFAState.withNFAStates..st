building
buildDFAState: aDfaState withNFAStates: anNfaStateCollection
	| matchersAndTransitionStates newDfaState |

	matchersAndTransitionStates := Dictionary new.
	anNfaStateCollection do: [:state |
		state transitionsDo: [:transition |
			(matchersAndTransitionStates
				at: transition matcher
				ifAbsentPut: [IdentitySet new: 5]) add: transition nextState].
		state isAccepting
			ifTrue: [aDfaState isAccepting: true]].

	matchersAndTransitionStates keysAndValuesDo: [:matcher :transitionStates |
		(cachedDfaStates includesKey: transitionStates)
			ifTrue: [newDfaState := cachedDfaStates at: transitionStates]
			ifFalse: [
				newDfaState := XMLDFAState new.
				cachedDfaStates at: transitionStates put: newDfaState.
				self buildDFAState: newDfaState withNFAStates: transitionStates].
		aDfaState addTransition:
			(XMLDFATransition
				matcher: matcher
				nextState: newDfaState)].