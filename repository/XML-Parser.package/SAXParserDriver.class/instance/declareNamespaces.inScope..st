private
declareNamespaces: aDictionary inScope: aScope
	aDictionary keysAndValuesDo: [:prefix :uri |
		(aScope resolvePrefix: prefix) = uri
			ifFalse: [
				self saxHandler
					startPrefixMapping: prefix
					uri: uri]].
	aScope mapPrefixesAndURIs: aDictionary.