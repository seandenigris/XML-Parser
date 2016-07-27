printing
printElementsFrom: aStart on: aStream
	self
		printElementsFrom: aStart
		to: aStart + self printLimit - 1
		on: aStream