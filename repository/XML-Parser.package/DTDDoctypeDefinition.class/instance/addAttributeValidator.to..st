adding
addAttributeValidator: aValidator to: anAttributeValidatorDictionary
	(aValidator isValueListValidator and: [aValidator hasNotationValues])
		ifTrue: [
			(aValidator allowedValues allSatisfy: [:each | self includesNotation: each])
				ifFalse: [XMLValidationException signal: 'Undeclared notation in enumeration']]
		ifFalse: [
			aValidator isEntityValidator
				ifTrue: [aValidator unparsedEntities: self unparsedEntities]].

	aValidator validateAndAddTo: anAttributeValidatorDictionary.