validating
validateAttributes: anAttributeDictionary
	self shouldFurtherNormalizeAttributeValue
		ifTrue: [self furtherNormalizeAttributeValueIn: anAttributeDictionary].

	self defaultValidator validateAttributeDefaultIn: anAttributeDictionary.

	self validateAttributeValue:
		(anAttributeDictionary
			at: self attribute
			ifAbsent: [^ self]).