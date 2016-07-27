validation
validateBeforeAddingTo: anAttributeValidatorDictionary usingDeclarationsFrom: aDeclarationDelegate
	anAttributeValidatorDictionary valuesDo: [:each |
		each isIDValidator
			ifTrue: [self errorElementWithMultipleIDAttributes]].
	ids := aDeclarationDelegate elementIDs.
	self validateReservedAttributeValidator.