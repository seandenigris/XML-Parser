validation
validateAttributes: anAttributeDictionary
	self
		validateAttributeDefaultIn: anAttributeDictionary;
		validateAttributeValue: (anAttributeDictionary at: attribute ifAbsent: [^ self])