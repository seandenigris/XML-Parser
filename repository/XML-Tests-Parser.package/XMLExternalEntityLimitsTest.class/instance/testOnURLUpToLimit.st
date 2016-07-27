tests
testOnURLUpToLimit
	"
	(self isSkipping: false) testOnURLUpToLimit
	"
	| parser size |

	self isSkipping
		ifTrue: [self skip].

	size := (self rssURL asXMLURI get) contents size.
	self
		shouldnt: [
			parser :=
				SAXHandler
					onURL: self rssURL
					upToLimit: size]
		raise: XMLLimitException.
	self assert: parser documentReadLimit = size.

	self
		should: [
			(SAXHandler
				onURL: self rssURL
				upToLimit: size - 1)
				parseDocument]
		raise: XMLLimitException.