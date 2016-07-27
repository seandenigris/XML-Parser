entities
parameterEntity: refName
	^ self parameterEntities
		at: refName
		ifAbsent: [self parseError: 'undefined parameter entity ', refName printString]