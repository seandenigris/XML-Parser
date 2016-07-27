tests
testParsingRetrievedURL
	| source |

	self isSkipping
		ifTrue: [self skipOrReturnWith: [^ self]].

	source := self feedURL asXMLURI get.
	self assert: source isString.
	self
		shouldnt: [SAXHandler parse: source]
		raise: XMLParserException.

	source := self feedURL asXMLURI streamGet.
	self
		assert: source isStream;
		assert: source peek isCharacter.
	self
		shouldnt: [SAXHandler parse: source]
		raise: XMLParserException.