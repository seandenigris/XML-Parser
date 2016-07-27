reading
readStream
	^ self
		readStreamUpToLimit: nil
		decoding: true