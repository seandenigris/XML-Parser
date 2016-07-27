initialization
setScope: aNamespaceScope
	scope := (XMLNamespaceScope enclosingScope: aNamespaceScope).
	scope isValidating: aNamespaceScope isValidating.
	self namespacedName setScope: scope.
	self attributeList do: [:each | each setScope: scope]