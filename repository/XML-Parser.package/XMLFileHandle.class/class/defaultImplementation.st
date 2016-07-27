accessing
defaultImplementation
	^ (Smalltalk includesKey: #FileSystem)
		ifTrue: [XMLFileSystemFileHandle]
		ifFalse: [XMLFileDirectoryFileHandle]