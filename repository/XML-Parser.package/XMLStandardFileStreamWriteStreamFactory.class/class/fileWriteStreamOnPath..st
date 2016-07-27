instance creation
fileWriteStreamOnPath: aPath
	"use forceNewFileNamed: to ensure truncation of existing files before writing"
	^ (Smalltalk at: #StandardFileStream) forceNewFileNamed: aPath