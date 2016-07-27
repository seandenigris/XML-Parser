accessing
elementValidatorFor: aName
	^ (dtd elementValidators
		at: aName
		ifAbsent: [nil]) copy