parsing
addElementMatchingState: aName
	aName = '#PCDATA'
		ifTrue: [self errorUnexpectedPCData].
	nfaBuilder pushMatcher: (DTDElementMatcher element: aName).