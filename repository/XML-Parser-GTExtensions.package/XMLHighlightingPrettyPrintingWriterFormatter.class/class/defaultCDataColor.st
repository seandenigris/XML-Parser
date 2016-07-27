accessing
defaultCDataColor
	^ DefaultCDataColor
		ifNil: [DefaultCDataColor := self textColorForShoutProperty: #primitive]