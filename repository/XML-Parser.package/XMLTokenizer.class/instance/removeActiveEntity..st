entity replacement
removeActiveEntity: anEntity
	self activeEntities remove: anEntity.
	anEntity isExternal
		ifTrue: [driver removeURI: anEntity uri].