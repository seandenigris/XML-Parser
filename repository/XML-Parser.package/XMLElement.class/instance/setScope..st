initialization
setScope: aNamespaceScope
	scope := aNamespaceScope.
	self useNamespaces: aNamespaceScope notNil.