printing
writeXMLWith: aWriter
	aWriter string: self class name asString, '(', self identityHash printString, ') '