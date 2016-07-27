entity replacement
pushBackReplacement: aReplacement forEntity: anEntity onClose: aBlock
	self addActiveEntity: anEntity.

	streamReader
		pushStream: aReplacement readStream
		onClose: aBlock.

	(anEntity isExternal and: [anEntity hasTextDeclaration])
		ifTrue: [self nextTextDeclaration].