accessing
qualified: aQualifiedName
	aQualifiedName splitQualifiedNameInto: [:prefixPart :localName |
		self changeWith: [self setPrefix: prefixPart localPart: localName]]