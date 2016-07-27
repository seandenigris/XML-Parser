validation
validateAttributeValue: aValue
	self validateID: aValue.
	(self ids includes: aValue)
		ifTrue: [self errorDuplicateID: aValue].

	self ids add: aValue.