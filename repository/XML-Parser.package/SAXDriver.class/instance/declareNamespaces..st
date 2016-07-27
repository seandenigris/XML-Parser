namespaces
declareNamespaces: aDictionary
	aDictionary keysAndValuesDo: [:prefix :uri |
		self scopeAllocator declarePrefix: prefix uri: uri.
		self saxHandler startPrefixMapping: prefix uri: uri]