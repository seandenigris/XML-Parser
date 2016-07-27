entity replacement
addActiveEntity: anEntity
	(self hasActiveEntityNamed: anEntity name)
		ifTrue: [self parseError: 'Illegal self-referential entity ', anEntity asReference].
	self maxEntityReplacementDepth
		ifNotNil: [:maxDepth |
			(self activeEntities size + 1> maxDepth)
				ifTrue: [self entityDepthError: 'Cannot further nest entity replacements']].
	
	self activeEntities addLast: anEntity.
	anEntity isExternal
		ifTrue: [driver currentURI: anEntity uri].