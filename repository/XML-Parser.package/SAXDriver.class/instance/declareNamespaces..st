handling tokens
declareNamespaces: namespaces
	namespaces keysAndValuesDo: [:ns :uri |
		self nestedScopes declareNamespace: ns uri: uri.
		self activeSaxHandler startPrefixMapping: ns uri: uri].