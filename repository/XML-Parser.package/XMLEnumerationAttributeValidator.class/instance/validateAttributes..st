validation
validateAttributes: anAttributeDictionary
	| value |

	value := anAttributeDictionary at: name ifAbsent: [^ self].
	self validateValue: value.
	(self values includes: value)
		ifFalse: [XMLValidationException signal: 'Invalid value "', value, '" for attribute "', name, '"'].