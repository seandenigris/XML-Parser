validation
validateDefaultValueIn: anAttributeDictionary
	((anAttributeDictionary at: attribute ifAbsent: ['']) isEmpty 
		and: [defaultValue notEmpty])
		ifTrue: [anAttributeDictionary at: attribute put: defaultValue]