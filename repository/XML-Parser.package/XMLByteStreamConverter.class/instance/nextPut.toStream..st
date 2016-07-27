encoding
nextPut: aCharacter toStream: aStream
	aCharacter asciiValue > 255
		ifTrue: [self errorInvalidCharacter].

	aStream basicNextPut: aCharacter.