validation
validateBeforeAddingTo: anAttributeValidatorDictionary usingDeclarationsFrom: aDeclarationDelegate
	unparsedEntities := aDeclarationDelegate unparsedEntities.
	self validateReservedAttributeValidator.