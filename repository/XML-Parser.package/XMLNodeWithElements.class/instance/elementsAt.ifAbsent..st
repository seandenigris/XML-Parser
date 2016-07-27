accessing
elementsAt: aSymbol ifAbsent: aBlock

	^ self elementsDictionary
		at: aSymbol asSymbol
		ifAbsent: aBlock.