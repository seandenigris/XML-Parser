validating
validateIDReferences
	self doctypeDefinition hasElementIDValidator
		ifTrue: [self doctypeDefinition elementIDValidator validateIDReferences]