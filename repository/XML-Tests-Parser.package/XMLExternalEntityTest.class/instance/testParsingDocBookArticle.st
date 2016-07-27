tests
testParsingDocBookArticle
	"This uses HTTP so is skipped by default"

	self isSkipping
		ifTrue: [self skipOrReturnWith: [^ self]].

	self
		shouldnt: [
			(SAXHandler on: self docBookArticleSource)
				resolvesExternalEntities: true;
				removeLimits;
				parseDocument]
		raise: XMLParserException.