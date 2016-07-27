validation
validateAndAddTo: anAttributeValidatorDictionary usingDeclarationsFrom: aDeclarationDelegate
	anAttributeValidatorDictionary valuesDo: [:each |
		each isIDValidator
			ifTrue: [
				XMLValidationException signal:
					'Element <', element, '> has multiple ID attributes']].
	
	super
		validateAndAddTo: anAttributeValidatorDictionary
		usingDeclarationsFrom: aDeclarationDelegate