formatting
formatAfterCharacterEscape: aCharacterEscape
	self endHighlight: entityReferenceHighlight.

	super formatAfterCharacterEscape: aCharacterEscape.