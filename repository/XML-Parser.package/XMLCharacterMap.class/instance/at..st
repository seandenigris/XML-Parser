accessing
at: aCharacter
	^ self at: aCharacter ifAbsent: [self errorCharacterNotInMap: aCharacter]