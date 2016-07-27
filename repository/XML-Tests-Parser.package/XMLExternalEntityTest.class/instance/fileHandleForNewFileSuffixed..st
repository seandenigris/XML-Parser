files
fileHandleForNewFileSuffixed: aFileSuffix
	| fileHandle |
	
	fileHandle := (self class name asString, '-', aFileSuffix) asXMLFileHandle.
	fileHandle exists
		ifTrue: [fileHandle delete].
	^ fileHandle.