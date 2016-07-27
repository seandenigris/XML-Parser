accessing
currentScope
	^ self scopes
		at: self currentLevel
		ifAbsent: [self emptyScope]