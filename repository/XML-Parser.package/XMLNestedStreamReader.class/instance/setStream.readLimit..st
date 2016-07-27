initialization
setStream: anInitialStream readLimit: aReadLimit
	self
		setStream: anInitialStream
		onClose: nil.

	readLimit := aReadLimit.