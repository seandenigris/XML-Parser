printing
printCanonicalOn: aStream
	| writer |
	writer := XMLWriter on: aStream.
	writer isCanonical: true.
	self printXMLOn: writer