parsing
validatorClassForType
	^ NonEnumerationValidators 
		at: (type ifEmpty: ['CDATA'])
		ifAbsent: [XMLEnumerationAttributeValidator]