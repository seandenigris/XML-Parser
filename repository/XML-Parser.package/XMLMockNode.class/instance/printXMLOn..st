printing
printXMLOn: aWriter
	aWriter string: self class asString, '(', self identityHash asString, ') '