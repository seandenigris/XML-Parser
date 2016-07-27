accessing
currentScope: aScope
	self usesNamespaces
		ifTrue: [self scopeManager pushScope: aScope]