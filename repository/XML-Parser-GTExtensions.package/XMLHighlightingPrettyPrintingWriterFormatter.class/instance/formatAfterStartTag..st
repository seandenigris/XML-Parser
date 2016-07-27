formatting
formatAfterStartTag: aTagWriter
	self endHighlight: tagHighlight.

	super formatAfterStartTag: aTagWriter.