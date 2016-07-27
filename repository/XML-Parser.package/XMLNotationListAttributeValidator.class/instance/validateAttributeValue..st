validation
validateAttributeValue: aValue
	super validateAttributeValue: aValue.

	(self notations includes: aValue)
		ifFalse: [self errorUndeclaredNotation: aValue]. 