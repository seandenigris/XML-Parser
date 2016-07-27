handling - dtd
handleEndDTD
	self hasExternalSubsetToParse
		ifTrue: [self parseExternalSubset].

	self isValidating
		ifTrue: [self doctypeDefinition validateCompletedDefinition].

	self saxHandler
		doctypeDefinition: self doctypeDefinition;
		endDTD.