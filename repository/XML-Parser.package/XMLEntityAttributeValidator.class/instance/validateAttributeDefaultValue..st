validating
validateAttributeDefaultValue: aDefaultValue
	aDefaultValue isXMLName
		ifFalse: [self errorInvalidDefaultValue: aDefaultValue]