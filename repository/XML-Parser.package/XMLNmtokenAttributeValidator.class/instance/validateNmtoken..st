validation
validateNmtoken: aName
	(XMLWellFormedParserTokenizer isNmtoken: aName)
		ifFalse: [self errorInvalidNmtoken: aName]