instance creation
named: aQualifiedName namespaceURI: aUri attributes: aDictionary content: aString
	^ (self named: aQualifiedName namespaceURI: aUri attributes: aDictionary)
		contentString: aString