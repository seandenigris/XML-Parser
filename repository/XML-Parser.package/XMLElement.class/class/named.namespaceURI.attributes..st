instance creation
named: aQualifiedName namespaceURI: aUri attributes: aDictionaryOrArray
	^ (self named: aQualifiedName namespaceURI: aUri)
		setAttributes: aDictionaryOrArray