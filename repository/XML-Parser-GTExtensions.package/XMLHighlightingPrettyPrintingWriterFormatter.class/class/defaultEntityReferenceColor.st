accessing
defaultEntityReferenceColor
	^ DefaultEntityReferenceColor
		ifNil: [DefaultEntityReferenceColor := self textColorForShoutProperty: #character]