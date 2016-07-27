accessing
name: aQualifiedName namespaceURI: aURI
	self
		declarePrefix: (aQualifiedName xmlPrefixBeforeLocalName) uri: aURI;
		name: aQualifiedName