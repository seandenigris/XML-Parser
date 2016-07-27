validation
validateAttributes: anAttributeDictionary
	self
		validateDefaultValueIn: anAttributeDictionary;
		validateValue: (anAttributeDictionary at: attribute ifAbsent: [^ self])
						