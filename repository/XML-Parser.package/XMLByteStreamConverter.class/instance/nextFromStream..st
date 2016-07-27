decoding
nextFromStream: aStream
	| character |

	((character := aStream basicNext) notNil
		and: [character asciiValue > 255])
		ifTrue: [self errorInvalidCharacter].

	^ character.