namespaces
scoping
	^ scoping ifNil: [scoping := XMLNamespaceScopeStack new]