removing
removeKey: aCharacter ifAbsent: aBlock
	^ characterCodeTable removeAt: aCharacter asciiValue ifAbsent: aBlock