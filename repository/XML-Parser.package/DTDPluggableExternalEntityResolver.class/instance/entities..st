accessing
entities: anAssociationCollection
	self hasEntities
		ifTrue: [self removeEntities].
	anAssociationCollection associationsDo: [:each |
		self
			entityAtURI: each key
			put: each value].