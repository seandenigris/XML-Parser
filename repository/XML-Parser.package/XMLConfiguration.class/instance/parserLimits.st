accessing
parserLimits
	^ parserLimits ifNil: [parserLimits := XMLParserLimits new]