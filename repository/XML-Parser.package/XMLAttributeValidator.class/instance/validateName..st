validation
validateName: aName
	(XMLWellFormedParserTokenizer isNmtoken: aName)
		ifFalse: [self errorInvalidName: aName]