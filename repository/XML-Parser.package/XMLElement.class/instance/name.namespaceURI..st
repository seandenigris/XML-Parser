namespaces
name: aQualifiedName namespaceURI: aUri
	self
		declarePrefix: (aQualifiedName prefixBeforeLocalName) uri: aUri;
		name: aQualifiedName.