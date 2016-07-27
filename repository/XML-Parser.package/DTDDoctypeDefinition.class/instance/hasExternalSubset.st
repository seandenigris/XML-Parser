testing
hasExternalSubset
	^ self isStandalone not and: [self externalSubsetURI notEmpty]