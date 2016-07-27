accessing
elementValidatorFor: anElement
	^ (self doctypeDefinition elementValidators
		at: anElement
		ifAbsent: [nil]) copy