searching
searchWith: aBlock
	"See superclass version."

	(aBlock value: self)
		ifTrue: [^ self].

	^ super searchWith: aBlock.