accessing
attributeNodeAt: aName namespaceURI: aURI ifAbsent: aBlock
	^ self attributeNodes
		attributeNodeAt: aName
		namespaceURI: aURI
		ifAbsent: aBlock