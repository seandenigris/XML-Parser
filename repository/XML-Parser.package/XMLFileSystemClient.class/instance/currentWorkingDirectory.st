paths
currentWorkingDirectory
	^ self makeNonRelative:
		(self pathToString: (Smalltalk at: #FileSystem) workingDirectory path)