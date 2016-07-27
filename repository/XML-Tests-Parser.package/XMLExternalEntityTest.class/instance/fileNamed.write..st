files
fileNamed: aFileName write: aString
	(XMLFileHandle path: aFileName) writeStream
		nextPutAll: aString;
		close.