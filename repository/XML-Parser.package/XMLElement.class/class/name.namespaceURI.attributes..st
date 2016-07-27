instance creation
name: aQualifiedName namespaceURI: aUri attributes: aDictionaryOrArray
	^ (self name: aQualifiedName namespaceURI: aUri)
		setAttributes: aDictionaryOrArray