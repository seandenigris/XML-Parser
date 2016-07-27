accessing
currentScope
	^ self usesNamespaces
		ifTrue: [self scopeManager currentScope]
		ifFalse: [nil]