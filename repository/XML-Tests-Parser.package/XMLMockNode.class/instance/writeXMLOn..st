printing
writeXMLOn: aWriter
	aWriter string: self class name asString, '(', self identityHash printString, ') '