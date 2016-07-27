accessing
baseURI
	"returns a string with the current base URI at this stage of parsing"
	^ self entityURIStack xmlLastOrNil ifNil: [self documentURI]