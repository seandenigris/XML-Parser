entity replacement
constructReplacementForGeneralEntity: anEntity
	context isLiteralValueContext
		ifTrue: [
			anEntity isExternal
				ifTrue: [self errorLiteralContextExternalEntity: anEntity].
			^ self constructReplacementForLiteralContextEntity: anEntity].

	self addActiveEntity: anEntity.
	driver handleStartContentEntityReplacement: anEntity name.
	self
		pushBackEntity: anEntity
		onClose: [
			driver handleEndContentEntityReplacement: anEntity name.
			self removeActiveEntity: anEntity].