entity replacement
constructReplacementForParameterEntity: anEntity
	context isLiteralValueContext
		ifTrue: [^ self constructReplacementForLiteralContextEntity: anEntity].

	streamReader pushBackCharacter: NormalizedSpace.
	self addActiveEntity: anEntity.
	self
		pushBackEntity: anEntity
		onClose: [self removeActiveEntity: anEntity].
	streamReader pushBackCharacter: NormalizedSpace.