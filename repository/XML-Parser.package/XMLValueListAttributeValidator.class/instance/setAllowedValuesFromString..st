accessing
setAllowedValuesFromString: aString
	allowedValues := (self valueListParserClass on: aString) parse