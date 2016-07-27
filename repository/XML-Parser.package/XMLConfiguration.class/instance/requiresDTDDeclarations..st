accessing
requiresDTDDeclarations: aBoolean
	(requiresDtdDeclarations := aBoolean)
		ifTrue: [self isValidating: true]