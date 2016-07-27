accessing
elementNamed: aName namespaceURI: aUri ifAbsent: aBlock
	^ (self elementsNamed: aName)
		detect: [:each | each namespaceURI = aUri]
		ifNone: aBlock