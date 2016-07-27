instance creation
basicOnPath: aPathString
	"use forceNewFileNamed: to ensure truncation of existing files before writing"
	^ (Smalltalk at: #StandardFileStream) forceNewFileNamed: aPathString