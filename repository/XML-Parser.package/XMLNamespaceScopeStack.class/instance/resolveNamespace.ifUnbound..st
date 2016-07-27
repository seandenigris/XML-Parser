accessing
resolveNamespace: aNamespace ifUnbound: aBlock
	^ self currentScope resolveNamespace: aNamespace ifUnbound: aBlock