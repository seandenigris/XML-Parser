accessing
currentScope: aNamespaceScope
	self usesNamespaces
		ifTrue: [self scopeAllocator currentScope: aNamespaceScope]