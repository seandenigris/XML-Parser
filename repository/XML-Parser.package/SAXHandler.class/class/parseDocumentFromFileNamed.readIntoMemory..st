instance creation
parseDocumentFromFileNamed: fileName readIntoMemory: readIntoMemory
	| stream |
	stream := FileDirectory default readOnlyFileNamed: fileName.
	readIntoMemory
		ifTrue: [stream := stream contentsOfEntireFile readStream].
	^ [self parseDocumentFrom: stream] ensure: [stream close].