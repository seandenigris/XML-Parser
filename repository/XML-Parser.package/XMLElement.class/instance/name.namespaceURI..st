namespace
name: aQualifiedName namespaceURI: aUri
	aQualifiedName splitQualifiedNameInto: [:prefixPart :localPart |
		self declareNamespace: prefixPart uri: aUri.
		self namespacedName setPrefix: prefixPart localName: localPart].
	self notifyParentOfRenaming.