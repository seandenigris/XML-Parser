instance creation
on: anInitialStream from: aSource onClose: aBlock
	^ self new
		stream: anInitialStream
		from: aSource
		onClose: aBlock