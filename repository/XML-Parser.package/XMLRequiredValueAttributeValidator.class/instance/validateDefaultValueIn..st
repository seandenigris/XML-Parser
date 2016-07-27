validation
validateDefaultValueIn: anAttributeDictionary
	(anAttributeDictionary includesKey: attribute)
		ifFalse: [XMLValidationException signal: 'Required attribute "', attribute, '" is missing']