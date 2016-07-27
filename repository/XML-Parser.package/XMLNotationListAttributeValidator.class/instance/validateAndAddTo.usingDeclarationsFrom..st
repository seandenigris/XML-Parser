validation
validateAndAddTo: anAttributeValidatorDictionary usingDeclarationsFrom: aDeclarationContainer
	anAttributeValidatorDictionary valuesDo: [:each |
		each hasNotationValues
			ifTrue: [
				XMLValidationException signal:
					'Element <', element, '> has multiple NOTATION list attributes']].

	notations := aDeclarationContainer notations.
	super
		validateAndAddTo: anAttributeValidatorDictionary
		usingDeclarationsFrom: aDeclarationContainer.