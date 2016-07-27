accessing
requiresDocumentConstraints: aBoolean
	(requiresDtdDeclarations := aBoolean)
		ifTrue: [self isValidating: true]