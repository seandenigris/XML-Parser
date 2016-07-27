accessing
qualified: aQualifiedName
	self changeWith: [
		qualified := aQualifiedName.
		localPart := aQualifiedName qualifiedNameLocalPart]