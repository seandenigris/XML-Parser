namespaces
declareNamespaces: aDictionary
	aDictionary keysAndValuesDo: [:prefix :uri |
		self nestedScopes declareNamespace: prefix uri: uri.
		self activeSaxHandler startPrefixMapping: prefix uri: uri]