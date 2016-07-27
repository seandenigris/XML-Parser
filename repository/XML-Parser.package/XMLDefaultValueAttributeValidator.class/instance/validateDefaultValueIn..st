validation
validateDefaultValueIn: anAttributeDictionary
	((anAttributeDictionary at: name ifAbsent: ['']) isEmpty 
		and: [defaultValue notEmpty])
		ifTrue: [anAttributeDictionary at: name put: defaultValue]