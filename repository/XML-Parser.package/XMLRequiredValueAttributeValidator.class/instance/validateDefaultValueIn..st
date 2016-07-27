validation
validateDefaultValueIn: anAttributeDictionary
	(anAttributeDictionary includesKey: name)
		ifFalse: [XMLValidationException signal: 'Required attribute "', name, '" is missing']