instance creation
onFileNamed: aFileName
	"Returns a new parser on the specified file but doesn't parse it.
	If aFileName is a relative path, it will be resolved in the context of
	the current working directory.

	Can be used to configure file parsers with 'configuring' messages before
	parsing with parseDocument."

	^ self
		on:
			(aFileName asXMLFileHandle
				streamGetUpToLimit: nil
				decoding: false)
		documentURI: aFileName