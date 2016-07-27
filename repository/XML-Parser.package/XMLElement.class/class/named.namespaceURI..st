instance creation
named: aQualifiedName namespaceURI: aUri
	^ aQualifiedName splitQualifiedNameInto: [:prefixPart :localPart |
		self new
			declareNamespace: prefixPart uri: aUri;
			setPrefix: prefixPart localName: localPart]