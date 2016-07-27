entity replacement
removeActiveEntity: anEntity
	self activeEntities remove: anEntity.

	driver activeEntityURI:
		(self activeEntities
			ifNotEmpty: [self activeEntities last uri]
			ifEmpty: [nil]).