namespaces
scopeManager
	^ scopeManager ifNil: [scopeManager := XMLNamespaceScopeManager new]