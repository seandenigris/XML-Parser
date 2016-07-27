tests
testOnURL
	| parser |

	self isSkipping
		ifTrue: [self skip].

	self
		shouldnt: [parser := SAXHandler onURL: self rssURL]
		raise: XMLHTTPException.
	self
		assert: parser documentURI = self rssURL;
		deny: parser documentURI asXMLURI isLocalURI.