observing
addObserver: anObject
	observers
		ifNil: [observers := anObject]
		ifNotNil: [
			observers :=
				observers isArray
					ifTrue: [observers copyWith: anObject]
					ifFalse: [Array with: observers with: anObject]]