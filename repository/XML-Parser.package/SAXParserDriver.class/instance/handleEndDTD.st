handling - dtd
handleEndDTD
	self hasExternalSubsetToParse
		ifTrue: [self parseExternalSubset].

	self saxHandler
		doctypeDefinition: self doctypeDefinition;
		endDTD.