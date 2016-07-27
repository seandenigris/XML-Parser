enumerating
asciiCharactersDo: aBlock
	0 to: 127 do: [:each | aBlock value: each asCharacter]