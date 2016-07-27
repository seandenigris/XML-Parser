instance creation
on: aStream onClose: aBlock
	^ self new
		setStream: aStream
		onClose: aBlock