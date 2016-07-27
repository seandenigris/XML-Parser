entity replacement
characterFromCodePoint: aCodePoint
	^ aCodePoint > 0
		ifTrue: [
			[Unicode value: aCodePoint]
				on: Error
				do: [:error | Character space]]
		ifFalse: [Character space]