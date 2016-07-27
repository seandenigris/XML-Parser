validation
validateAndAddTo: anAttributeValidatorDictionary usingDeclarationsFrom: aDeclarationDelegate
	anAttributeValidatorDictionary valuesDo: [:each |
		each hasNotationValues
			ifTrue: [self errorMultipleNotationAttributes]].

	notations := aDeclarationDelegate notations.
	super
		validateAndAddTo: anAttributeValidatorDictionary
		usingDeclarationsFrom: aDeclarationDelegate.