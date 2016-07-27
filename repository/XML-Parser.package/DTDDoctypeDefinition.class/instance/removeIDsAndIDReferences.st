removing
removeIDsAndIDReferences
	self hasElementIDValidator
		ifTrue: [self elementIDValidator removeIDsAndIDReferences]