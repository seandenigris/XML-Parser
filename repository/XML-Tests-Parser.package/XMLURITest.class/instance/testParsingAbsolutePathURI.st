tests
testParsingAbsolutePathURI
	| uri |

	uri := self absolute asXMLURI.
	self
		deny: uri isFileURI;
		assert: uri isRelative;
		assert: uri isLocalURI;
		assert: uri scheme isEmpty;
		assert: uri host isEmpty;
		assert: uri path = self absolute;
		assert: uri queryString isEmpty;
		assert: uri fragment isEmpty.