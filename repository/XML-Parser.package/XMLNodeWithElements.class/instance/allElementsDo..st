enumerating
allElementsDo: aBlock
	"Descend depth-first visiting each element with aBlock."

	self hasElements
		ifTrue: [self elementsDo: [:each | each allElementsDo: aBlock]]