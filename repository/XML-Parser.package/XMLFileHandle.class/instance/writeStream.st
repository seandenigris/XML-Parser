writing
writeStream
	^ self writeStreamOnFileOrDo: [:error | error resignalAs: XMLFileException]