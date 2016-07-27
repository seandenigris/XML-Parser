accessing
attributeNamed: aLocalName namespaceURI: aUri
	^ self attributeNamed: aLocalName namespaceURI: aUri ifAbsent: [self defaultValue]