initializing
inheritBindingsFromScope: anEnclosingScope.
	self defaultNamespace
		ifNil: [self defaultNamespace: anEnclosingScope defaultNamespace].

	anEnclosingScope bindingsDo: [:prefix :uri |
		(self isBoundNamespace: prefix)
			ifFalse: [self bindNamespace: prefix to: uri]].