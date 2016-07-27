testing
isValidListValue: aValue
	^ aValue = '#PCDATA' or: [XMLWellFormedParserTokenizer isName: aValue]