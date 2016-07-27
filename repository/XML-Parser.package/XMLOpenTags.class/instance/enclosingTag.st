accessing
enclosingTag
	^ self tags
		at: self totalOpen
		ifAbsent: ['']