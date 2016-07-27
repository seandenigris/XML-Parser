accessing
fileSize
	^ self exists
		ifTrue: [self directoryEntry fileSize]
		ifFalse: [0]