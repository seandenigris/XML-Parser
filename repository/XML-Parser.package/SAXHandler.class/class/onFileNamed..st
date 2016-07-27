instance creation
onFileNamed: aFileName
	^ self on: (FileStream readOnlyFileNamed: aFileName)