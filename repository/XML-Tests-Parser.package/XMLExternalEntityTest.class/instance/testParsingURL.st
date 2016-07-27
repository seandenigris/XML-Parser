tests
testParsingURL
	"This uses HTTP so is skipped by default
	(self isSkipping: false) testParsingURL
	"
	| doc |

	self isSkipping
		ifTrue: [self skip].

	self
		shouldnt: [doc := XMLDOMParser parseURL: self rssURL]
		raise: XMLHTTPException.
	self assert: (doc root isNamed: 'rss').