validation
validateAttributeDefaultIn: anAttributeDictionary
	defaultValueValidator validateAttributeDefaultIn: anAttributeDictionary.

	(self shouldFurtherNormalizeAttributeValue
		and: [anAttributeDictionary includesKey: attribute])
		ifTrue: [self furtherNormalizeAttributeValueIn: anAttributeDictionary].