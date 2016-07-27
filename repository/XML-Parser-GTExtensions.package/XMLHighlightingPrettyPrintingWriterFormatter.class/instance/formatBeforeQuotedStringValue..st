formatting
formatBeforeQuotedStringValue: aString
	super formatBeforeQuotedStringValue: aString.

	quotedStringValueHighlight := self newHighlightColored: self quotedStringValueColor.