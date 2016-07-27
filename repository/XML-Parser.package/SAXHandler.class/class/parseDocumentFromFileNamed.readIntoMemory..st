instance creation
parseDocumentFromFileNamed: fileName readIntoMemory: readIntoMemory
	| stream xmlDoc |
	stream := FileDirectory default readOnlyFileNamed: fileName.
	readIntoMemory
		ifTrue: [stream := stream contentsOfEntireFile readStream].
	[xmlDoc := self parseDocumentFrom: stream]
		ensure: [stream close].
	^xmlDoc