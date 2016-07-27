accessing
currentElement
	^ self openElements
		at: self totalOpen
		ifAbsent: ['']