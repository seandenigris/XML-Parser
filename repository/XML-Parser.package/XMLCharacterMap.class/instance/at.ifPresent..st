accessing
at: aCharacter ifPresent: aBlock
	^ aBlock value: (self at: aCharacter ifAbsent: [^ nil])