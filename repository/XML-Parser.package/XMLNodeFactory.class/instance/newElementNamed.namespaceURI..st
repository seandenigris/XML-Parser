instance creation
newElementNamed: aName namespaceURI: aUri
	^ (self classForElement: aName namespaceURI: aUri)
		name: aName
		namespaceURI: aUri