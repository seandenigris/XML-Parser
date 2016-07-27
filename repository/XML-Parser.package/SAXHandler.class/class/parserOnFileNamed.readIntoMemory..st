instance creation
parserOnFileNamed: fileName readIntoMemory: readIntoMemory
	| stream  |
	stream := FileDirectory default readOnlyFileNamed: fileName.
	readIntoMemory
		ifTrue: [stream := stream contentsOfEntireFile readStream].
	^self on: stream