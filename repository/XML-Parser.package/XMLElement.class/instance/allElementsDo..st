enumerating
allElementsDo: aBlock
	"See superclass version."

	aBlock value: self.
	self hasChildren
		ifTrue: [self elementsDo: [:each | each allElementsDo: aBlock]]