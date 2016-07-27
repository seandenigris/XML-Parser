initialization
initialize
	super initialize.

	documentReadLimit := self class defaultDocumentReadLimit.
	externalSubsetReadLimit := (documentReadLimit / 4) asInteger.
	maxEntityReplacementDepth := 3.