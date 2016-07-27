accessing
defaultSecondaryMarkupColor
	^ DefaultSecondaryMarkupColor
		ifNil: [DefaultSecondaryMarkupColor := self textColorForShoutProperty: #self]