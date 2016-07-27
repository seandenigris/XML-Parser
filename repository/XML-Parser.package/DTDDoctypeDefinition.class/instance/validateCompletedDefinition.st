validation
validateCompletedDefinition
	self hasUnparsedEntities
		ifTrue: [self unparsedEntityValidator validateUnparsedEntities].
	self hasNotationAttributeValidators
		ifTrue: [self unparsedEntityValidator validateNotationAttributes].