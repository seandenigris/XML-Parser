validating
validateStartTag: aName
	currentState :=
		currentState
			nextDFAStateMatching: aName
			ifNone: [self errorUnexpectedElement: aName].
	currentState hasNonDeterminism
		ifTrue: [self errorNonDeterminismInContentModelAfter: aName].