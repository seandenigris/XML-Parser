accessing
elementValidatorFor: aName
	^ (self dtd elementValidators
		at: aName
		ifAbsent: [nil]) copy