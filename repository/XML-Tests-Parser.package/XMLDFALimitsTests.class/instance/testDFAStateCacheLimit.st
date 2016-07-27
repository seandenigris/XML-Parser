tests
testDFAStateCacheLimit
	| names contentModel firstState currentState visitedStates |

	names :=
		(1 to: XMLDFAStateCache new maxCachedDFAStates) collect: [:each |
			'test', each printString].

	contentModel := String streamContents: [:stream |
		stream nextPut: $(.
		names withIndexDo: [:each :i |
			i > 1
				ifTrue: [stream nextPut: $,].
			stream nextPutAll: each].
		stream nextPut: $)].

	firstState :=
		(DTDDFAContentModelParser
			element: 'test'
			contentModel: contentModel) parse dfa.
	currentState := firstState.
	visitedStates := Set new.
	names withIndexDo: [:name :i | | previousState |
		visitedStates add: currentState.
		previousState := currentState.
		currentState := currentState detectNextStateMatching: name.
		self assert: currentState notNil.
		i = names size
			ifTrue: [
				visitedStates do: [:each |
					each = previousState
						ifFalse: [self assert: each dfaStateTransitions isEmpty]].
				self
					assert: firstState dfaStateTransitions isEmpty;
					assert: firstState dfaStateCache cachedDFAStates size = 2;
					assert: currentState isAccepting]
			ifFalse: [
				visitedStates do: [:each | self deny: each dfaStateTransitions isEmpty].
				self
					assert: firstState dfaStateTransitions notEmpty;
					assert: firstState dfaStateCache cachedDFAStates size = (i + 1);
					deny: currentState isAccepting]].

	currentState := firstState.
	names withIndexDo: [:each :i |
		currentState := currentState detectNextStateMatching: each.
		self deny: currentState isNil.
		i = names size
			ifTrue: [self assert: currentState isAccepting]
			ifFalse: [self deny: currentState isAccepting]].