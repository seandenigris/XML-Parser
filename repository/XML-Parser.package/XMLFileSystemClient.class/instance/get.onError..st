retrieving
get: aFullPath onError: aBlock
	^ [(self pathClass from: aFullPath) asFileReference readStream]
		on: (Smalltalk at: #FileSystemError)
		do: aBlock