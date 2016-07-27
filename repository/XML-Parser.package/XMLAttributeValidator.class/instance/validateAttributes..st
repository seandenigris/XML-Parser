validation
validateAttributes: anAttributeDictionary
	self
		validateDefaultValueIn: anAttributeDictionary;
		validateValue: (anAttributeDictionary at: name ifAbsent: [^ self])
						