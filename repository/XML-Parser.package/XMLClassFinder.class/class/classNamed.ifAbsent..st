accessing
classNamed: aClassName ifAbsent: aBlock
	^ Smalltalk globals
		at: aClassName asSymbol
		ifAbsent: aBlock