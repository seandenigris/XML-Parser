validation
validateStartTag: aName
	currentState := currentState
		detectNextStateMatching: [:matcher | matcher matchesElement: aName]
		ifNone: [self errorUnexpectedElement: aName]