initialization
initialize
	super initialize.

	documentReadLimit := 1000000.
	externalSubsetReadLimit := (documentReadLimit / 4) asInteger.
	maxEntityReplacementDepth := 3.