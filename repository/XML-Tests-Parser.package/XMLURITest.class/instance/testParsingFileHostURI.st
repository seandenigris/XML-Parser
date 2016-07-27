tests
testParsingFileHostURI
	| uri |

	uri := self fileHostURIString asXMLURI.
	self
		deny: uri isRelative;
		assert: uri isFileURI;
		assert: uri isLocalURI;
		assert: uri scheme = 'file';
		assert: uri host = self host;
		assert: uri path = self absolute;
		assert: uri queryString isEmpty;
		assert: uri fragment isEmpty.