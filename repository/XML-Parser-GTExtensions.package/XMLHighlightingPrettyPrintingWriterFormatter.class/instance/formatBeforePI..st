formatting
formatBeforePI: aPIWriter
	super formatBeforePI: aPIWriter.

	piHighlight := self newHighlightColored: self piColor.