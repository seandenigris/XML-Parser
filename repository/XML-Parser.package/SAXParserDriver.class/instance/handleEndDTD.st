handling - dtd
handleEndDTD
	(self resolvesExternalEntities
		and: [self externalSubsetURI notEmpty
			and: [self isValidating or: [self isStandalone not]]])
		ifTrue: [self parseExternalSubset: self externalSubsetURI].

	self saxHandler
		endInternalSubset;
		doctypeDefinition: self doctypeDefinition;
		endDTD.