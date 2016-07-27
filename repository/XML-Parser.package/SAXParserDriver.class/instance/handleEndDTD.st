handling tokens
handleEndDTD
	(self resolvesExternalEntities
		and: [self doctypeDefinition hasExternalSubset])
		ifTrue: [self parseExternalSubset: self doctypeDefinition externalSubsetURI].

	self saxHandler
		endInternalSubset;
		endDTD.