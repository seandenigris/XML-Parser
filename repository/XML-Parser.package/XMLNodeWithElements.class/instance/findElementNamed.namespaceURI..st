searching
findElementNamed: aName namespaceURI: aUri
	^ self allElementsDetect: [:each | (each isNamed: aName) and: [each namespaceURI = aUri]]