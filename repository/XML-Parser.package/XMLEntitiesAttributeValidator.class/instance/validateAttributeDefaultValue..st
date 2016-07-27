validating
validateAttributeDefaultValue: aDefaultValue
	self
		spaceSeparatedListValuesIn: aDefaultValue
		do: [:each |
			each isXMLName
				ifFalse: [self errorInvalidDefaultValue: aDefaultValue]]