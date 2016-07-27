entity replacement
nextUnreplacedGeneralEntityOnWriteStreamNamed: aName
	driver handleUnreplacedGeneralEntityReference: aName.
	writeStream
		nextPut: $&;
		nextPutAll: aName;
		nextPut: $;.
	^ true.