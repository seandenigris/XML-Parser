validation
validateAttributeValue: aValue
	(self allowedValues includes: aValue)
		ifFalse: [self errorInvalidValue: aValue]