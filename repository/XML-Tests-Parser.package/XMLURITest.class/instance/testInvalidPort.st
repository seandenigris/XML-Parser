tests
testInvalidPort
	| uri |

	uri := (self domainURIString, ':invalid', self absolute) asXMLURI.
	self
		assert: uri host = self host;
		assert: uri port isNil;
		assert: uri path = self absolute.

	uri := (self domainURIString, ':invalid', self queryString) asXMLURI.
	self
		assert: uri host = self host;
		assert: uri port isNil;
		assert: uri pathSegments isEmpty.

	uri := (self domainURIString, ':invalid', self fragment) asXMLURI.
	self
		assert: uri host = self host;
		assert: uri port isNil;
		assert: uri pathSegments isEmpty.