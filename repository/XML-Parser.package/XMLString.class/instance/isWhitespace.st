testing
isWhitespace
	^ self notEmpty
		and: [self string allSatisfy: [:each | each xmlParserIsWhitespace]]