printing
printCanonicalOn: aStream

	| writer |
	writer := XMLWriter on: aStream.
	writer canonical: true.
	self printXMLOn: writer