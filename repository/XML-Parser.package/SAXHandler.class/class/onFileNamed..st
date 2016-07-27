instance creation
onFileNamed: aFileName
	^ self
		on: (XMLFileHandle defaultImplementation path: aFileName) readStream
		documentURI: aFileName