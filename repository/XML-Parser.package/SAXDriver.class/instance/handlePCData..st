handling tokens
handlePCData: aString
	self isValidating
		ifTrue: [self validator validatePCData: aString].

	saxHandler characters: aString.