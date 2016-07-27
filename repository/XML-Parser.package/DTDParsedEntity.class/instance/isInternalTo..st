testing
isInternalTo: aURI
	^ self isExternal not
		and: [self uri = aURI]