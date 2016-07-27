entity replacement
addActiveEntity: anEntity
	self activeEntities addLast: anEntity.

	driver activeEntityURI: anEntity uri.