validation
validateAttributeValue: aValue
	(self allowedValues includes: aValue)
		ifFalse: [XMLValidationException signal: 'Invalid value "', aValue, '" for attribute "', attribute, '"']