validation
validateEntityReference: aName
	self validateName: aName.
	(self unparsedEntities includesKey: aName)
		ifFalse: [self errorInvalidUnparsedEntityReference: aName]