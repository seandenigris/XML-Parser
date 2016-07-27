handling tokens
handleEndDTD
	(self saxHandler resolvesExternalEntities
		and: [self dtd hasExternalSubset])
		ifTrue: [self parseExternalSubset: self dtd externalSubsetURI].

	self saxHandler endDTD.