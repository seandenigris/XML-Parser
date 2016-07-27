validation
validateEndDocument
	self hasAttributeValidators
		ifTrue: [self validateIDsAndReferences]	