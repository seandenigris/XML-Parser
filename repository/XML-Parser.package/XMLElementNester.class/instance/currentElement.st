accessing
currentElement
	^ self openElements isEmpty
		ifTrue: ['']
		ifFalse: [openElements at: openElements size]