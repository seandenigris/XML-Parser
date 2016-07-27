instance creation
newElementNamed: aName namespaceURI: aUri
	^ (self classForElement: aName namespaceURI: aUri) new
		name: aName namespaceURI: aUri;
		nodeFactory: self