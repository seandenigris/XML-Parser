tests
testLocalURIFromNonLocalURI
	self
		should: [
			(SAXHandler
				on: '<!DOCTYPE root SYSTEM "file://local/uri">'
				documentURI: 'http://www.example.com')
				parseDocument]
		raise: XMLLimitException.