validation
validateAndAddTo: anAttributeValidatorDictionary usingDeclarationsFrom: aDeclarationDelegate
	anAttributeValidatorDictionary valuesDo: [:each |
		each isIDValidator
			ifTrue: [self errorElementWithMultipleIDAttributes]].

	super
		validateAndAddTo: anAttributeValidatorDictionary
		usingDeclarationsFrom: aDeclarationDelegate