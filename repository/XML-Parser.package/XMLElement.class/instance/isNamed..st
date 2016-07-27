testing
isNamed: aString
	^ (self localName = aString)
		or: [self qualifiedName = aString]