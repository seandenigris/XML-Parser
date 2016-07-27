private
declareNamespaces: aDictionary inScope: aScope
	aScope setPrefixMappingsFrom: aDictionary.
	aDictionary keysAndValuesDo: [:prefix :uri |
		self saxHandler startPrefixMapping: prefix uri: uri].