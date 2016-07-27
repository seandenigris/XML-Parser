private 
validatorClassForType
	^ NonEnumerationValidators
		at: type
		ifAbsent: [
			type isEmpty
				ifTrue: [self errorMissingAttributeType].
			(self hasNotationType)
				ifTrue: [XMLNotationListAttributeValidator]
				ifFalse: [XMLValueListAttributeValidator]]