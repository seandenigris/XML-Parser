reading
readStreamUpToLimit: aMaxSize
	| sizeOnDisk |

	self isFile
		ifFalse: [XMLFileException signal: 'Not a file'].
	
	(sizeOnDisk := self sizeOnDisk) > 0
		ifFalse: [ ^ '' readStream].
	(aMaxSize notNil and: [sizeOnDisk > aMaxSize])
		ifTrue: [XMLLimitException signal: 'File size limit exceeded'].

	^ self readStreamOnFileOrDo: [:error | XMLFileException signal: error messageText]