accessing
isValidating: aBoolean
	(isValidating := aBoolean)
		ifFalse: [self requiresDTDDeclarations: false]