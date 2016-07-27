accessing
parameterEntityAt: aName
	^ self parameterEntities at: aName ifAbsent: [nil]