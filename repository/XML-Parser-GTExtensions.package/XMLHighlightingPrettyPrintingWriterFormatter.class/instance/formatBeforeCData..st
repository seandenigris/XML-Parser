formatting
formatBeforeCData: aCDataWriter
	super formatBeforeCData: aCDataWriter.

	cdataHighlight := self newHighlightColored: self cdataColor.