tokenizing
expectNext: aCharacter
	(streamReader peek == aCharacter)
		ifTrue: [streamReader next].
	^ aCharacter.