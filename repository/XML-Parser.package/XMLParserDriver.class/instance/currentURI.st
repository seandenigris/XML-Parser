accessing
currentURI
	"returns a string with the current URI at this stage of parsing"
	^ self uris lastOrNil ifNil: [self documentURI]