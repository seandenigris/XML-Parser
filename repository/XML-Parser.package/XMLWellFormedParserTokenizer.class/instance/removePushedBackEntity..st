entity replacing
removePushedBackEntity: anEntity
	self pushedBackEntities remove: anEntity.
	anEntity isExternal
		ifTrue: [driver popEntityURI: anEntity uri].