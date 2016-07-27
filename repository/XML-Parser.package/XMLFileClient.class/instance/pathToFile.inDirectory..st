paths
pathToFile: aFileName inDirectory: aDirectoryPath
	^ (aDirectoryPath copyWith: self pathSeparator), aFileName