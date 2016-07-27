private 
validatorClassForType
	type ifEmpty: [XMLValidationException signal: 'Missing attribute type'].

	^ NonEnumerationValidators 
		at: type
		ifAbsent: [
			(self hasNotationType)
				ifTrue: [XMLNotationListAttributeValidator]
				ifFalse: [XMLValueListAttributeValidator]]