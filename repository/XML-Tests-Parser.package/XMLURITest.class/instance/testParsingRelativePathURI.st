tests
testParsingRelativePathURI
	| uri |

	uri := self relative asXMLURI.
	self
		deny: uri isFileURI;
		assert: uri isRelative;
		assert: uri isLocalURI;
		assert: uri scheme isEmpty;
		assert: uri host isEmpty;
		assert: uri path = self relative;
		assert: uri queryString isEmpty;
		assert: uri fragment isEmpty.