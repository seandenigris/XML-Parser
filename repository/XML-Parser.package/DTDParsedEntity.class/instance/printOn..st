printing
printOn: aStream
	aStream
		nextPutAll: self referencePrefix;
		nextPutAll: self name;
		nextPut: $;