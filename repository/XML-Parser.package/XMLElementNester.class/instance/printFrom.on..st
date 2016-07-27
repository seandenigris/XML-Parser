printing
printFrom: aStart on: aStream
	self
		printFrom: aStart
		to: aStart + self printLimit - 1
		on: aStream