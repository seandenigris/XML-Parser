validating
validateAttributeDefaultValue: aDefaultValue
	(self allowedValues includes: aDefaultValue)
		ifFalse: [self errorInvalidDefaultValue: aDefaultValue]