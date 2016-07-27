accessing
enclosingElement
	^ self openElements
		at: self totalOpen
		ifAbsent: ['']