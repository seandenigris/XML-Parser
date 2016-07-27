tests
testAsXMLHTTPRequest
	| url request |

	url := 'test.xml'.
	request := url asXMLHTTPRequest.
	self
		assert: (request isKindOf: XMLHTTPRequest);
		assert: request url = url.