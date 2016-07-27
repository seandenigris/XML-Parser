printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
	self
		printElementsFrom: 1
		on: aStream.
	aStream nextPut: $).