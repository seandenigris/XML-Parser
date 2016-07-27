tests
testParsingDocBookExample
	"This uses HTTP so is skipped by default"

	self isSkipping
		ifTrue: [self skipOrReturnWith: [^ self]].

	self
		shouldnt: [
			(SAXHandler on: self docBookExampleSource)
				resolvesExternalEntities: true;
				removeLimits;
				parseDocument]
		raise: XMLParserException.