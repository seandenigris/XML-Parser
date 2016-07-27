validation
validateAttributes: anAttributeDictionary
	self validateEntityReference: (anAttributeDictionary at: name ifAbsent: [^ self])