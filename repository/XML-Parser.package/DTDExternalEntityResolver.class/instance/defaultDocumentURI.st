resolving
defaultDocumentURI
	^ self fileClient
		pathToFile: 'default'
		inDirectory: self fileClient currentWorkingDirectory