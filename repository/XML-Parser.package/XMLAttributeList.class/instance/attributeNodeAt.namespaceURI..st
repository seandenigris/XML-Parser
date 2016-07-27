accessing
attributeNodeAt: aLocalName namespaceURI: aUri
	^ self attributeNodeAt: aLocalName namespaceURI: aUri ifAbsent: [self defaultValue]