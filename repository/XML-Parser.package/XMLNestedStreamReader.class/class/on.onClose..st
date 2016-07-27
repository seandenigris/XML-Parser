instance creation
on: anInitialStream onClose: aBlock
	^ self new
		setStream: anInitialStream
		onClose: aBlock