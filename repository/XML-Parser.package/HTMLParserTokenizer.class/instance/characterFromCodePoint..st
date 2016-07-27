entity replacement
characterFromCodePoint: aCodePoint
	^ (aCodePoint notNil and: [aCodePoint > 0])
		ifTrue: [
			[aCodePoint asCharacter]
				on: Error
				do: [:error | Character space]]
		ifFalse: [Character space]