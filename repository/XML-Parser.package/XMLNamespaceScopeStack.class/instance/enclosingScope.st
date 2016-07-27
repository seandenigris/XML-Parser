accessing
enclosingScope
	^ self scopes
		at: self scopes size - 1
		ifAbsent: [self emptyScope]