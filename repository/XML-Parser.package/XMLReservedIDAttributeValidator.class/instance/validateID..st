validation
validateID: anId
	((XMLWellFormedParserTokenizer isName: anId)
		and: [(anId indexOf: $:) = 0])
		ifFalse: [self errorInvalidID: anId]