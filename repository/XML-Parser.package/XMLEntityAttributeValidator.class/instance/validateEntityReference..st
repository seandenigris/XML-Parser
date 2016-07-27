validation
validateEntityReference: aName
	(self unparsedEntities includesKey: aName)
		ifFalse: [self errorInvalidUnparsedEntityReference: aName]