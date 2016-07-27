formatting
formatBeforeComment: aCommentWriter
	super formatBeforeComment: aCommentWriter.

	commentHighlight := self newHighlightColored: self commentColor.