validation
validateIDReferences
	self dtd hasElementIDValidator
		ifTrue: [self dtd elementIDValidator validateIDReferences]