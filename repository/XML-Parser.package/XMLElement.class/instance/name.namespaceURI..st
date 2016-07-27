namespaces
name: aQualifiedName namespaceURI: aUri
	aQualifiedName splitQualifiedNameInto: [:prefix :localPart |
		self declarePrefix: prefix uri: aUri].
	self name: aQualifiedName.