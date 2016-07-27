copying
postCopy
	super postCopy.

	elementClassesByName
		ifNotNil: [elementClassesByName := elementClassesByName copy].