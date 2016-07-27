tests
testOnURL
	| parser |

	self skipOrReturnWith: [^ self].

	self
		shouldnt: [parser := SAXHandler onURL: self feedURL]
		raise: XMLHTTPException.
	self
		assert: parser documentURI = self feedURL;
		deny: parser documentURI asXMLURI isLocalURI.