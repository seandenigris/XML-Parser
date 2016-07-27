as yet unclassified
remove: aCharacter from: aString
	^aString reject: [:each | each = aCharacter]