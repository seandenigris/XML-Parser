namespaces
declareNamespaces: aDictionary
	aDictionary keysAndValuesDo: [:prefix :uri |
		self scopeManager declarePrefix: prefix uri: uri.
		self activeSaxHandler startPrefixMapping: prefix uri: uri]