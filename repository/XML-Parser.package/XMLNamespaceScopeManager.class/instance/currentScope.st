accessing
currentScope
	^ self scopes
		at: self scopes size
		ifAbsent: [self emptyScope]