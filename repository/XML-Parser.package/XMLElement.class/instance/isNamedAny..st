testing
isNamedAny: aSymbolArray
	^ aSymbolArray anySatisfy: [:each | self isNamed: each]