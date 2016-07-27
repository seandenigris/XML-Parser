formatting
formatBeforeStartTag: aTagWriter
	super formatBeforeStartTag: aTagWriter.

	self startNewTagHighlight.