accessing
prefixesMappedTo: aUri
	^ self prefixes select: [:each | self includesPrefix: each mappedTo: aUri]