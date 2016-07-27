validating
validateAttributeDefaultValue: aDefaultValue
	aDefaultValue isXMLNmtoken
		ifFalse: [self errorInvalidDefaultValue: aDefaultValue]