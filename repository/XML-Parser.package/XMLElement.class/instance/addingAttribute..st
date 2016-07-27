notifying
addingAttribute: anAttribute
	anAttribute element
		ifNotNil: [:element |
			element == self
				ifFalse: [self errorAddingAttributeFromOtherElement]]