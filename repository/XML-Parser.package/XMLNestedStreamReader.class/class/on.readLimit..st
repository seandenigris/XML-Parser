instance creation
on: anInitialStream readLimit: aReadLimit
	^ self new
		setStream: anInitialStream
		readLimit: aReadLimit