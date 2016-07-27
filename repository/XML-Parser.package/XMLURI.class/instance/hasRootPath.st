testing
hasRootPath
	^ self pathSegments size = 2
		and: [self pathSegments allSatisfy: [:each | each isEmpty]]