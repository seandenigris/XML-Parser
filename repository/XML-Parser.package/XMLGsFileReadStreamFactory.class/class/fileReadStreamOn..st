instance creation
fileReadStreamOn: aPath
	^ (Smalltalk at: #GsFile) openRead: aPath