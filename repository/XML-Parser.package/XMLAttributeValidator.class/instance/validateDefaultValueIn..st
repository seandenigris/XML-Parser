validation
validateDefaultValueIn: anAttributeDictionary
	defaultPragma == #REQUIRED
		ifTrue: [
			(anAttributeDictionary includesKey: name)
				ifFalse: [XMLValidationException signal: 'Required attribute "', name, '" is missing']]
		ifFalse: [
			defaultPragma == #IMPLIED
				ifTrue: [anAttributeDictionary at: name ifAbsentPut: ['']]
				ifFalse: [
					defaultPragma == #FIXED
						ifTrue: [anAttributeDictionary at: name put: defaultValue]
						ifFalse: [
							((anAttributeDictionary at: name ifAbsent: ['']) isEmpty 
								and: [defaultValue notEmpty])
								ifTrue: [anAttributeDictionary at: name put: defaultValue]]]].

	(self shouldFurtherNormalizeValue and: [anAttributeDictionary includesKey: name])
		ifTrue: [self furtherNormalizeValueIn: anAttributeDictionary].