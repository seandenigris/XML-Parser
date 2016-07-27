testing
hasAbsolutePath
	^ self pathSegments notEmpty
		and: [self pathSegments first isEmpty]