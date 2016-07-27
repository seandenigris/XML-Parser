retrieving
streamGetUpToLimit: aMaxSize decoding: aBoolean
	(aMaxSize notNil
		and: [self fileSize > aMaxSize])
		ifTrue: [self errorFileExceedsMaxSize: aMaxSize].

	^ aBoolean
		ifTrue: [self readStream]
		ifFalse: [self rawReadStream].