entity replacing
removePushedBackEntity: aPushedBackEntity
	self pushedBackEntities remove: aPushedBackEntity.
	aPushedBackEntity isExternal
		ifTrue: [driver popEntityURI: aPushedBackEntity uri].
	^ aPushedBackEntity.