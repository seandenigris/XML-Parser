private
readStreamOnFileOrDo: aBlock
	^ [self fileReference readStream]
		on: self fileSystemError
		do: aBlock