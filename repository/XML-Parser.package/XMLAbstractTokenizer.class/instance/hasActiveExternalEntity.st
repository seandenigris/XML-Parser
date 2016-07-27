testing
hasActiveExternalEntity
	^ activeEntities anySatisfy: [:each | each isExternal]