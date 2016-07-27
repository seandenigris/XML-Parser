accessing
currentScope
	^ self usesNamespaces
		ifTrue: [self nestedScopes currentScope]
		ifFalse: [XMLNamespaceScope isValidating: false]