initialization
initialize
	super initialize.

	documentReadLimit := self class defaultDocumentReadLimit.
	externalSubsetReadLimit := self class defaultExternalSubsetReadLimit.
	maxEntityReplacementDepth := 8.