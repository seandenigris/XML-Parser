accessing
elementNamed: aName namespaceURI: aUri
	^ self elementNamed: aName namespaceURI: aUri ifAbsent: [self defaultValue]