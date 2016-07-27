accessing
elementsAt: aSymbol
	^ self elementsAt: aSymbol ifAbsent: [self newElements]