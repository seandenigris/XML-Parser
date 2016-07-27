validation
validateValue: aValue
	(self values includes: aValue)
		ifFalse: [XMLValidationException signal: 'Invalid value "', aValue, '" for attribute "', name, '"']