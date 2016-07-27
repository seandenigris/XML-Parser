initialize
initialize
	stack := OrderedCollection new.
	canonical := false.
	nestedScopes := XMLNestedNamespaceScopes new.
	newLinesAllowed := false