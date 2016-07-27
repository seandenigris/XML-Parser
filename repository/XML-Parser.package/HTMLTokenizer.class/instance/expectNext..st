tokenizing - expecting
expectNext: aCharacter
	(streamReader peek == aCharacter)
		ifTrue: [streamReader next].
	^ aCharacter.