parsing
validatorClassForType
	type ifEmpty: [XMLValidationException signal: 'Missing attribute type'].

	^ NonEnumerationValidators 
		at: type
		ifAbsent: [XMLValueListAttributeValidator]