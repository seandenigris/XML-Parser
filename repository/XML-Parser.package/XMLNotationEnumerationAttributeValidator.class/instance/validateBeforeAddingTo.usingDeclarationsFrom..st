validation
validateBeforeAddingTo: anAttributeValidatorDictionary usingDeclarationsFrom: aDeclarationDelegate
	anAttributeValidatorDictionary valuesDo: [:each |
		each hasNotationValues
			ifTrue: [self errorMultipleNotationAttributes]].
	notations := aDeclarationDelegate notations.
	self validateReservedAttributeValidator.