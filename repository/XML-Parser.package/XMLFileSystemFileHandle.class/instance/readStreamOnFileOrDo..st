private
readStreamOnFileOrDo: aBlock
	^ [self fileReference readStream]
		on: (Smalltalk at: #FileSystemError)
		do: aBlock