accessing
parserClass
	^ parserClass ifNil: [parserClass := SAXHandler]