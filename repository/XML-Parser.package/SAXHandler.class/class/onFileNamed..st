instance creation
onFileNamed: aFileName
	^ self
		on: (XMLFileHandle path: aFileName) readStream
		documentURI: aFileName