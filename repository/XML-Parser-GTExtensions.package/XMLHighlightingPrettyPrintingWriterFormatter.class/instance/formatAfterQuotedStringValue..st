formatting
formatAfterQuotedStringValue: aString
	self endHighlight: quotedStringValueHighlight.

	super formatAfterQuotedStringValue: aString.