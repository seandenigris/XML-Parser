accessing
currentScope
	^ self usesNamespaces
		ifTrue: [self scopeAllocator currentScope]
		ifFalse: [nil]