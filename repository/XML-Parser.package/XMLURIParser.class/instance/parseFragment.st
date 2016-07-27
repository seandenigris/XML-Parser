parsing
parseFragment
	^ self
		parseUpToAnyNotSkipping: ''
		startingAfter: $#