validation
validateDefaultValueIn: anAttributeDictionary
	defaultValueValidator validateDefaultValueIn: anAttributeDictionary.

	(self shouldFurtherNormalizeValue and: [anAttributeDictionary includesKey: attribute])
		ifTrue: [self furtherNormalizeValueIn: anAttributeDictionary].