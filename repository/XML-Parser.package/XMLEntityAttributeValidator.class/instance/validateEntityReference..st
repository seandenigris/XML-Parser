validation
validateEntityReference: aName
	self validateName: aName.
	(self unparsedEntities includesKey: aName)
		ifFalse: [XMLValidationException signal: 'Unrecognized unpasred entity ', aName, ' in attribute "', name, '"']