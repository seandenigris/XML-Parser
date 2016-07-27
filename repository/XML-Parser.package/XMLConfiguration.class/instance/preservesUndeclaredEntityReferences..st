accessing
preservesUndeclaredEntityReferences: aBoolean
	(preservesUndeclaredEntityReferences := aBoolean)
		ifTrue: [self isValidating: false]