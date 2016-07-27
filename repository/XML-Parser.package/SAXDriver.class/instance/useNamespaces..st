accessing
useNamespaces: aBoolean
	useNamespaces := aBoolean.
	self nestedScopes isValidating: aBoolean.