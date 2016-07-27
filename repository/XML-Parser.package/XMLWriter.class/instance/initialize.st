initialize
initialize
	stack := OrderedCollection new.
	canonical := false.
	scoping := XMLNamespaceScopeStack new.
	newLinesAllowed := false