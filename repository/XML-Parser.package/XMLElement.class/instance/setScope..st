initialization
setScope: aNamespaceScope
	scope := (XMLNamespaceScope enclosingScope: aNamespaceScope).
	self namespacedName setScope: scope.
	self attributeList setScope: scope.