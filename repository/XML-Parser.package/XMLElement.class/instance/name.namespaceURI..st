namespaces
name: aQualifiedName namespaceURI: aUri
	aQualifiedName splitQualifiedNameInto: [:prefixPart :localPart |
		self declareNamespace: prefixPart uri: aUri].
	self name: aQualifiedName.