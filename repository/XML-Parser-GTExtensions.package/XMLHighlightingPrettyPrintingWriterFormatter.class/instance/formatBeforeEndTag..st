formatting
formatBeforeEndTag: aTagWriter
	super formatBeforeEndTag: aTagWriter.

	self startNewTagHighlight.