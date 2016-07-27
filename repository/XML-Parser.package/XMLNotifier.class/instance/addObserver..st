observing
addObserver: anObject
	observers :=
		observers
			ifNil: [Array with: anObject]
			ifNotNil: [observers copyWith: anObject]