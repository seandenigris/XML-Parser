entity replacing
addPushedBackEntity: aPushedBackEntity
	(self hasPushedBackEntityNamed: aPushedBackEntity name)
		ifTrue: [self errorSelfReferentialEntity: aPushedBackEntity].

	self maxEntityReplacementDepth
		ifNotNil: [:maxDepth |
			self pushedBackEntities size >= maxDepth
				ifTrue: [self errorEntityDepthLimitExceeded]].
	
	self pushedBackEntities addLast: aPushedBackEntity.
	aPushedBackEntity isExternal
		ifTrue: [driver pushEntityURI: aPushedBackEntity uri].

	^ aPushedBackEntity.