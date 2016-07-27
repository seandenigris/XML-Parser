accessing
nextPut: aCharacter
	self addSpaceFor: aCharacter.
	stream nextPut: aCharacter.
	lastChar := aCharacter.