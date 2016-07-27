testing
isValidListValue: aValue
	^ aValue = '#PCDATA' or: [XMLTokenizer isName: aValue]