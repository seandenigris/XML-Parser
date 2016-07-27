testing
hasActiveEntityNamed: aName
	^ activeEntities anySatisfy: [:each | each name = aName]