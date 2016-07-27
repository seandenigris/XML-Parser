validation
validateID: anId
	(XMLWellFormedParserTokenizer isNCName: anId)
		ifFalse: [self errorInvalidID: anId]