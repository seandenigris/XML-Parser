removing
removeAt: aCharacterCode
	^ self removeAt: aCharacterCode ifAbsent: [self errorCodeNotInTable: aCharacterCode]