private
writeStreamOnFileOrDo: aBlock
	^ [self fileReference writeStream]
		on: self fileSystemError
		do: aBlock