reading
readFrom: aStream withBase: aFirstBase startingWithAny: aCharacterCollection orBase: aSecondBase
	^ (aCharacterCollection anySatisfy: [:each | aStream peek == each])
		ifTrue: [
			aStream next.
			self readFrom: aStream withBase: aFirstBase]
		ifFalse: [self readFrom: aStream withBase: aSecondBase]