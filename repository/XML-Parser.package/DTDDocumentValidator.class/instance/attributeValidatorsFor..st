accessing
attributeValidatorsFor: anElement
	^ dtd attributeValidators
		at: anElement
		ifAbsent: [Dictionary new]