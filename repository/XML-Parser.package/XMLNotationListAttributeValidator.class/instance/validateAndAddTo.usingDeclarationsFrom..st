validation
validateAndAddTo: anAttributeValidatorDictionary usingDeclarationsFrom: aDeclarationDelegate
	anAttributeValidatorDictionary valuesDo: [:each |
		each hasNotationValues
			ifTrue: [
				XMLValidationException signal:
					'Element <', element, '> has multiple NOTATION list attributes']].

	notations := aDeclarationDelegate notations.
	super
		validateAndAddTo: anAttributeValidatorDictionary
		usingDeclarationsFrom: aDeclarationDelegate.