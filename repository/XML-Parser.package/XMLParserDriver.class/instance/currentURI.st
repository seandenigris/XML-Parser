accessing
currentURI
	^ self uris
		ifEmpty: [self documentURI]
		ifNotEmpty: [self uris last]