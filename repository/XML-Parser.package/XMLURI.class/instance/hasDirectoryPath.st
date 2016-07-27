testing
hasDirectoryPath
	^ self pathSegments notEmpty
		and: [self pathSegments last isEmpty]