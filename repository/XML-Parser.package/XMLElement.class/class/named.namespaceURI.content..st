instance creation
named: aQualifiedName namespaceURI: aUri content: aString
	^ (self named: aQualifiedName namespaceURI: aUri)
		contentString: aString