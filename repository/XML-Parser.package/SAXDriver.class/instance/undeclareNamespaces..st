namespaces
undeclareNamespaces: aDictionary
	aDictionary keysAndValuesDo: [:prefix :uri |
		self activeSaxHandler startPrefixMapping: prefix uri: uri].