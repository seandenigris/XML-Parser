accessing
elementsNamed: aName namespaceURI: aUri
	^ (self elementsNamed: aName) select: [:each | each namespaceURI = aUri]