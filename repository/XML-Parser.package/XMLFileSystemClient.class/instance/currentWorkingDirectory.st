paths
currentWorkingDirectory
	^ (self systemPathFrom: (Smalltalk at: #FileSystem) workingDirectory path)
		copyWithFirst: self pathSeparator