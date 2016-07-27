selectors
sourceSelectorForPath: aPathString
	^ ('source', (aPathString select: [:each | each isAlphaNumeric])) asSymbol