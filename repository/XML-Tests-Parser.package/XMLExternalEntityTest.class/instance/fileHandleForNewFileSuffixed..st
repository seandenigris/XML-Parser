files
fileHandleForNewFileSuffixed: aFileSuffix
	| fileHandle |
	
	fileHandle := (self class name asString, '-', aFileSuffix) asXMLFileHandle.
	fileHandle isFile
		ifTrue: [fileHandle delete].
	^ fileHandle.