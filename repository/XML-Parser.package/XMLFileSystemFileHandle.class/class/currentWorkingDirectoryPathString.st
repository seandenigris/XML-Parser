private
currentWorkingDirectoryPathString
	^ String streamContents: [:stream |
		(Smalltalk at: #FileSystem) workingDirectory
			path segments do: [:each |
				stream
					nextPut: $/;
					nextPutAll: each]].