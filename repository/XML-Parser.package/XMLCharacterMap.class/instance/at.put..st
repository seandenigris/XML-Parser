accessing
at: aCharacter put: aValue
	| asciiValue |

	((asciiValue := aCharacter asciiValue) > 256
		and: [characterCodeTable isWideCharacterCodeTable not])
		ifTrue: [self swapInWideCharacterCodeTable].

	^ characterCodeTable at: asciiValue put: aValue.