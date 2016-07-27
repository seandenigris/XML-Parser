retrieving
streamGetUpToLimit: aMaxSize decoding: aBoolean
	^ (self
		getUpToLimit: aMaxSize
		decoding: aBoolean) readStream