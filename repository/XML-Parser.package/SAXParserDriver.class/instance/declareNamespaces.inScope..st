namespaces
declareNamespaces: aDictionary inScope: aScope
	aDictionary keysAndValuesDo: [:prefix :uri |
		aScope mapPrefix: prefix to: uri.
		self saxHandler startPrefixMapping: prefix uri: uri]