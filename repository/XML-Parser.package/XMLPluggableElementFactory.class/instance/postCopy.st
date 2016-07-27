copying
postCopy
	super postCopy.

	elementClasses
		ifNotNil: [elementClasses := elementClasses copy].