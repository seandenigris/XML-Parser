accessing
attributeValidatorsFor: anElement
	^ self dtd attributeValidators
		at: anElement
		ifAbsent: [nil]