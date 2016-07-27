instance creation
onFileNamed: aFileName
	^ self
		on: (XMLFileClient defaultImplementation get: aFileName)
		documentURI: aFileName