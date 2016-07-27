private
currentWorkingDirectoryPath
	| fileSystemPath |

	fileSystemPath := (Smalltalk at: #FileSystem) workingDirectory path.
	^ ($/ join: fileSystemPath segments) copyWithFirst: $/.