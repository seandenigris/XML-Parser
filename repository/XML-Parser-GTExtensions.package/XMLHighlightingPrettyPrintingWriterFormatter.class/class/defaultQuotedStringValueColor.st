accessing
defaultQuotedStringValueColor
	^ DefaultQuotedStringValueColor
		ifNil: [DefaultQuotedStringValueColor := self textColorForShoutProperty: #string]