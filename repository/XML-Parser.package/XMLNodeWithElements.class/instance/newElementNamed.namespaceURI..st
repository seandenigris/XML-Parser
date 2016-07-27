instance creation
newElementNamed: aName namespaceURI: aUri
	^ (self nodeFactory
		newElementNamed: aName
		namespaceURI: aUri)
		configuration: self configuration