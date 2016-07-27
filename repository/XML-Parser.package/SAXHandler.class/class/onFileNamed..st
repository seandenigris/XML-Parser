instance creation
onFileNamed: aFilePathString
	"Returns new parser on the specified file but doesn't parse"

	^ self
		on:
			(XMLDecodingReadStreamAdapter onExternalStream:
				(XMLFileHandle path: aFilePathString) readStream)
		documentURI: aFilePathString