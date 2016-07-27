testing
includesPrefix: aPrefix mappedTo: aUri
	^ (self includesPrefix: aPrefix)
		and: [(self resolvePrefix: aPrefix) = aUri]