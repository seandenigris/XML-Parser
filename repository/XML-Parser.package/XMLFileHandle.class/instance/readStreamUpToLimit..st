reading
readStreamUpToLimit: aMaxSize
	| fileSize |

	self isFile
		ifFalse: [XMLFileException signal: 'Not a file'].
	
	(fileSize := self fileSize) > 0
		ifFalse: [ ^ '' readStream].
	(aMaxSize notNil and: [fileSize > aMaxSize])
		ifTrue: [XMLLimitException signal: 'File size limit exceeded'].

	^ self readStreamOnFileOrDo: [:error | error resignalAs: XMLFileException]