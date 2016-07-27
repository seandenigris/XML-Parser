accessing
currentScope
	"for speed"
	^ self scopes size > 0
		ifTrue: [scopes at: scopes size]
		ifFalse: [self emptyScope]