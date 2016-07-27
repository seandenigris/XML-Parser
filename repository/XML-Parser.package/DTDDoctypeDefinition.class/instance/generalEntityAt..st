accessing
generalEntityAt: aName
	^ self generalEntities at: aName ifAbsent: [nil]