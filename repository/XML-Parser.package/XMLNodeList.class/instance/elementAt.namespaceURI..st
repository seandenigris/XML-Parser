accessing
elementAt: aName namespaceURI: aUri
	^ self
		elementAt: aName
		namespaceURI: aUri
		ifAbsent: [self defaultValue]