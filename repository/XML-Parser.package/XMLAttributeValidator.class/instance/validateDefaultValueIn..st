validation
validateDefaultValueIn: anAttributeDictionary
	defaultValueValidator validateDefaultValueIn: anAttributeDictionary.

	(self shouldFurtherNormalizeValue and: [anAttributeDictionary includesKey: name])
		ifTrue: [self furtherNormalizeValueIn: anAttributeDictionary].