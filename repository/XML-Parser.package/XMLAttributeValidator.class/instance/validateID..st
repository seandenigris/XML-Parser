validation
validateID: anId
	(XMLWellFormedParserTokenizer isName: anId)
		ifFalse: [self errorInvalidID: anId]