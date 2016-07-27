tests
testParsingURL
	"This uses HTTP so is skipped by default

	(self isSkipping: false) testParsingURL
	"
	| url doc |

	self isSkipping
		ifTrue: [self skip].

	url := 'http://www.pharo-project.org/news?rss'.
	self
		shouldnt: [doc := XMLDOMParser parseURL: url]
		raise: [XMLFileException].
	self assert: (doc root isNamed: 'rss').