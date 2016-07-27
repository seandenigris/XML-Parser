private
scopeAllocator
	^ scopeAllocator ifNil: [scopeAllocator := XMLNamespaceScopeAllocator new]