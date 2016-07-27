retrieving
get: aFullPath onError: aBlock
	^ [(self pathObjectFrom: aFullPath) asFileReference readStream]
		on: (Smalltalk at: #FileSystemError)
		do: aBlock