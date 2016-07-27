parsing
validatorClassForType
	^ NonEnumerationValidators 
		at: (type ifEmpty: ['CDATA'])
		ifAbsent: [XMLValueListAttributeValidator]