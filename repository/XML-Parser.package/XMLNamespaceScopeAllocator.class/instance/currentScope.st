accessing
currentScope
	^ scopes lastOrNil ifNil: [self emptyScope]