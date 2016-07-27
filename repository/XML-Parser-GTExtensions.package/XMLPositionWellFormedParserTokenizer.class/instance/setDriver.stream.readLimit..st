initialization
setDriver: aDriver stream: aStream readLimit: aReadLimit
	super
		setDriver: aDriver
		stream: aStream
		readLimit: aReadLimit.
	initialReadLimit := aReadLimit + 1. "+1 to get 1-based positions"