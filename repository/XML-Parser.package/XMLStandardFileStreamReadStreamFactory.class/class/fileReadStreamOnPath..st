instance creation
fileReadStreamOnPath: aPath
	^ (Smalltalk at: #StandardFileStream) readOnlyFileNamed: aPath