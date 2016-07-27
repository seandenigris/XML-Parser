accessing
activeEntities
	^ activeEntities
		ifNil: [activeEntities := OrderedCollection new: self maxEntityReplacementDepth]