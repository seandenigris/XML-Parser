formatting
formatBeforeEntityReference: anEntityReferenceWriter
	super formatBeforeEntityReference: anEntityReferenceWriter.

	entityReferenceHighlight := self newHighlightColored: self entityReferenceColor.