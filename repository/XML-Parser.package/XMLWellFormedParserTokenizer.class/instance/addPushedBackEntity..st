entity replacing
addPushedBackEntity: anEntity
	(self hasPushedBackEntityNamed: anEntity name)
		ifTrue: [self errorSelfReferentialEntity: anEntity].
	self maxEntityReplacementDepth
		ifNotNil: [:maxDepth |
			self pushedBackEntities size >= maxDepth
				ifTrue: [self errorEntityDepthLimitExceeded]].
	
	self pushedBackEntities addLast: anEntity.
	anEntity isExternal
		ifTrue: [driver pushEntityURI: anEntity uri].