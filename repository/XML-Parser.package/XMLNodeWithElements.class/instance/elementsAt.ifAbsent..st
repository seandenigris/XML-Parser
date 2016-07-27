accessing
elementsAt: aSymbol ifAbsent: aBlock
	^ self elementsByName at: aSymbol asSymbol ifAbsent: aBlock.