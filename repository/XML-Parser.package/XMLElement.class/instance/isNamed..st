testing
isNamed: aSymbol

	^ (self localName == aSymbol asSymbol)
		or: [self tag == aSymbol asSymbol]