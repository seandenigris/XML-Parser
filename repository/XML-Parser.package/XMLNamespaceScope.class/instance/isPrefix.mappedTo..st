testing
isPrefix: aPrefix mappedTo: aUri
	^ ((self isMappedPrefix: aPrefix)
		and: [(self resolvePrefix: aPrefix) = aUri])