observing
removeObserver: anObject
	(observers := observers copyWithout: anObject)
		ifEmpty: [observers := nil]