accessing
unparsedEntityAt: aName
	^ self unparsedEntities at: aName ifAbsent: [nil]