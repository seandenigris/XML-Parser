testing
hasPushedBackEntityNamed: aName
	^ self hasPushedBackEntities
		and: [self pushedBackEntities anySatisfy: [:each | each name = aName]]