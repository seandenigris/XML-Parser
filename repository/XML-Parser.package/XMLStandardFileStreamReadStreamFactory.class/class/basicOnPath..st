instance creation
basicOnPath: aPathString
	^ (Smalltalk at: #StandardFileStream) readOnlyFileNamed: aPathString