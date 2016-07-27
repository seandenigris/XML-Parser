accessing
isValidating: aBoolean
	(isValidating := aBoolean)
		ifFalse: [self requiresDocumentConstraints: false]