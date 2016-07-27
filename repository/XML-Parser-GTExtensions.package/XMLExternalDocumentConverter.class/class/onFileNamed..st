instance creation
onFileNamed: aFileName
	^ self on:
		(aFileName asXMLFileHandle
			streamGetUpToLimit: nil
			decoding: false)