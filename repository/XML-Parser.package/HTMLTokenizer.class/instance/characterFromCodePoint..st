entity replacement
characterFromCodePoint: aCodePoint
	^ aCodePoint > 0
		ifTrue: [
			[self encodingClass value: aCodePoint]
				on: Error
				do: [:error | Character space]]
		ifFalse: [Character space]