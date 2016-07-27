tests
testParsingFileURI
	| uri |

	uri := self fileURIString asXMLURI.
	self
		deny: uri isRelative;
		assert: uri isFileURI;
		assert: uri isLocalURI;
		assert: uri scheme = 'file';
		assert: uri host isEmpty;
		assert: uri path = self absolute;
		assert: uri queryString isEmpty;
		assert: uri fragment isEmpty.