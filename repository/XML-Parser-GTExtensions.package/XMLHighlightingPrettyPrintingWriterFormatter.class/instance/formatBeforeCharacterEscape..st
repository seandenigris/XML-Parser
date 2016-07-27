formatting
formatBeforeCharacterEscape: aCharacterEscape
	super formatBeforeCharacterEscape: aCharacterEscape.

	entityReferenceHighlight := self newHighlightColored: self entityReferenceColor.