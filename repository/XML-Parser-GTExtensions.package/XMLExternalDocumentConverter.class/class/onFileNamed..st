instance creation
onFileNamed: aFileName
	^ self on:
		(aFileName asXMLFileHandle
			readStreamUpToLimit: nil
			decoding: false)