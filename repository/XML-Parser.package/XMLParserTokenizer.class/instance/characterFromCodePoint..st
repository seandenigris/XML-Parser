entity replacement
characterFromCodePoint: aCodePoint
	^ (aCodePoint notNil and: [aCodePoint > 0])
		ifTrue: [
			[aCodePoint asCharacter]
				on: Error
				do: [:error | self invalidCodePoint: aCodePoint]]
		ifFalse: [self invalidCodePoint: aCodePoint]