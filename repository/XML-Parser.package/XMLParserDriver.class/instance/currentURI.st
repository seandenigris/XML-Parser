accessing
currentURI
	^ self activeEntityURI ifNil: [self documentURI]