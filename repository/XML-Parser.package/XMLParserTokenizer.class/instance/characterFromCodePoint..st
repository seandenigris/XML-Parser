decoding
characterFromCodePoint: aCodePoint
	(aCodePoint notNil
		and: [aCodePoint > 0])
		ifTrue: [
			^ [CharacterConverter characterFromCodePoint: aCodePoint]
				on: Error
				do: [:error | nil]]
		ifFalse: [^ nil].