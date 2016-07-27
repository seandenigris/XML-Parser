accessing
fileSize
	^ (self directoryEntry ifNil: [^ 0]) size