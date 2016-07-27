accessing
at: aCharacter ifAbsentPut: aBlock
	^ self at: aCharacter ifAbsent: [self at: aCharacter put: aBlock value]