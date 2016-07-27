validation
validatePCData: aString
	currentState := currentState
		detectNextStateMatching: [:matcher | matcher matchesPCData: aString]
		ifNone: [self errorUnexpectedPCData: aString]