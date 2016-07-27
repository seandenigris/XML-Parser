testing
includesKey: aCharacter
	self at: aCharacter ifAbsent: [^ false].
	^ true.