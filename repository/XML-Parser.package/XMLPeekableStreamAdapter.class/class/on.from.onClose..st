instance creation
on: aStream from: aSource onClose: aBlock
	^ self new
		setStream: aStream
		source: aSource
		onClose: aBlock