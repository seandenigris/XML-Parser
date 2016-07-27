accessing
elementAt: aName namespaceURI: aUri ifAbsent: aBlock
	^ (self elementsAt: aName)
		detect: [:each | each namespaceURI = aUri]
		ifNone: aBlock