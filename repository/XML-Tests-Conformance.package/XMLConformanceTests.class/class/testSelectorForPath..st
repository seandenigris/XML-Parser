selectors
testSelectorForPath: aPathString
	^ ('test', (aPathString select: [:each | each isAlphaNumeric])) asSymbol