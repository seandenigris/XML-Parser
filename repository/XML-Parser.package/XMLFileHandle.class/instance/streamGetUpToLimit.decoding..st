retrieving
streamGetUpToLimit: aMaxSize decoding: aBoolean
	(aMaxSize notNil
		and: [self fileSize > aMaxSize])
		ifTrue: [
			self
				errorFileSize: self fileSize
				exceedsMaxSize: aMaxSize].

	^ aBoolean
		ifTrue: [self readStream]
		ifFalse: [self rawReadStream].