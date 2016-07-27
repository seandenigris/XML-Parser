observing
removeObserver: anObject
	observers isArray
		ifTrue: [
			(observers := observers copyWithout: anObject) size = 1
				ifTrue: [observers := observers first]]
		ifFalse: [
			observers == anObject
				ifTrue: [observers := nil]]