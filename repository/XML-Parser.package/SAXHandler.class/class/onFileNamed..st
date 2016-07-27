instance creation
onFileNamed: aFileNameString
	"Returns new parser on the specified file but doesn't parse"

	^ self
		on: aFileNameString asXMLFileHandle readStream
		documentURI: aFileNameString