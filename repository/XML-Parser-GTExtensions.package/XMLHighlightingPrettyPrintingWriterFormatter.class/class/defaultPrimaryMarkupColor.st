accessing
defaultPrimaryMarkupColor
	^ DefaultPrimaryMarkupColor
		ifNil: [DefaultPrimaryMarkupColor := self textColorForShoutProperty: #argument]