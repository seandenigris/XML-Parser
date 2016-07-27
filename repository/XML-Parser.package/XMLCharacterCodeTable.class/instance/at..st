accessing
at: aCharacterCode
	^ self at: aCharacterCode ifAbsent: [self errorCodeNotInTable: aCharacterCode]