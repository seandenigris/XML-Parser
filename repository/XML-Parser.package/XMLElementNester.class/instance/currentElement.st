accessing
currentElement
	"for speed"
	^ self openElements size > 0
		ifTrue: [openElements at: openElements size]
		ifFalse: ['']