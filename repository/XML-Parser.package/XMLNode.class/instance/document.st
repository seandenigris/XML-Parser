accessing
document
	^ self hasParent
		ifTrue: [self parent document]
		ifFalse: [nil]