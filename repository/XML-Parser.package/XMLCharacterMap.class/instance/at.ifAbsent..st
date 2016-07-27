accessing
at: aCharacter ifAbsent: aBlock
	| asciiValue |

	((asciiValue := aCharacter asciiValue) > 255
		and: [characterCodeTable isWideCharacterCodeTable not])
		ifTrue: [^ aBlock value].

	^ characterCodeTable at: asciiValue ifAbsent: aBlock.