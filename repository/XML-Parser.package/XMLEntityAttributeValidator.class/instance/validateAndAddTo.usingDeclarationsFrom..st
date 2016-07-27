validation
validateAndAddTo: anAttributeValidatorDictionary usingDeclarationsFrom: aDeclarationDelegate
	unparsedEntities := aDeclarationDelegate unparsedEntities.
	super
		validateAndAddTo: anAttributeValidatorDictionary
		usingDeclarationsFrom: aDeclarationDelegate.