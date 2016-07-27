accessing
currentScope
	^ self scopes isEmpty
		ifTrue: [self emptyScope]
		ifFalse: [scopes at: scopes size]