testing
isNmtokenChar: aCharacter
	^ (NameStartChars includes: aCharacter)
		or: [AdditionalNameChars includes: aCharacter]