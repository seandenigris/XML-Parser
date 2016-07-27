private
declareNamespaces: aDictionary inScope: aScope
	aScope setFromDictionary: aDictionary.
	aDictionary keysAndValuesDo: [:prefix :uri |
		self saxHandler startPrefixMapping: prefix uri: uri].