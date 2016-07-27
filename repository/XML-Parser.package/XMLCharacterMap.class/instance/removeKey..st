removing
removeKey: aCharacter
	^ self
		removeKey: aCharacter
		ifAbsent: [self errorCharacterNotInMap: aCharacter]