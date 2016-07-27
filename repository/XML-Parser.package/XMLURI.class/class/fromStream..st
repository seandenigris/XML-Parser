instance creation
fromStream: aStream
	^ self basicNew initialize parseURIStream: aStream