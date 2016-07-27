entity replacement
characterFromCodePoint: aCodePoint
	(aCodePoint notNil and: [aCodePoint > 0])
		ifFalse: [^ nil].
	^ [aCodePoint asCharacter]
		on: Error
		do: [:error | nil].