parsing
parseQueryString
	^ self
		parseUpToAnyNotSkipping: '#'
		startingAfter: $?