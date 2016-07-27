accessing
nextIntegerWithBase: aBase
	aBase = 10
		ifTrue: [^ self nextDecimalInteger].
	aBase = 16
		ifTrue: [^ self nextHexInteger].

	self error: 'Only base 10 and 16 supported'.