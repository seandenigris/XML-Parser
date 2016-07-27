adding
addElementNamed: aName namespaceURI: aUri
	^ self addNode:
		(self nodeFactory
			newElementNamed: aName
			namespaceURI: aUri)