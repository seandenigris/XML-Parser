files
fileNamed: aFileName write: aString
	aFileName asXMLFileHandle writeStreamDo: [:writeStream |
		writeStream nextPutAll: aString]