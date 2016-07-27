private
incrementTotalResolvedEntities
	totalResolvedEntities :=
		totalResolvedEntities
			ifNil: [1]
			ifNotNil: [totalResolvedEntities + 1]