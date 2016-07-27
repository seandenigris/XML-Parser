observing
addObserver: anObject
	observers :=
		observers
			ifNil: [anObject]
			ifNotNil: [
				observers isArray
					ifTrue: [observers copyWith: anObject]
					ifFalse: [Array with: observers with: anObject]]