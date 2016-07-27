accessing
elementsAt: aName namespaceURI: aUri
	^ (self elementsAt: aName) select: [:each | each namespaceURI = aUri]