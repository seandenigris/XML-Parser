accessing
allElementsNamed: aName namespaceURI: aUri
	^ (self allElementsNamed: aName) select: [:each | each namespaceURI = aUri]