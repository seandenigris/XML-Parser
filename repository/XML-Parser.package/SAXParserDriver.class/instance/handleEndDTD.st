handling tokens
handleEndDTD
	(self resolvesExternalEntities
		and: [self dtd hasExternalSubset])
		ifTrue: [self parseExternalSubset: self dtd externalSubsetURI].

	self saxHandler endDTD.