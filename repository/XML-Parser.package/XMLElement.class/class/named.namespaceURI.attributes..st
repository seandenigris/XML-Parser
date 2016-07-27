instance creation
named: aQualifiedName namespaceURI: aUri attributes: aDictionary
	^ (self named: aQualifiedName namespaceURI: aUri)
		setAttributes: aDictionary