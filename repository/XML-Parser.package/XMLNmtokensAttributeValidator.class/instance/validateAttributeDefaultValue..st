validating
validateAttributeDefaultValue: aDefaultValue
	self
		spaceSeparatedListValuesIn: aDefaultValue
		do: [:each |
			each isXMLNmtoken
				ifFalse: [self errorInvalidDefaultValue: aDefaultValue]]