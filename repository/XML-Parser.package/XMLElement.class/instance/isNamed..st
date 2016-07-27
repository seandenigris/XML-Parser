testing
isNamed: aSymbol
	^ (self localName == aSymbol asSymbol)
		or: [self qualifiedName == aSymbol asSymbol]