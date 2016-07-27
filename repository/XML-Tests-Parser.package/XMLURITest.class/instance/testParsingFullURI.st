tests
testParsingFullURI
	| uri |

	uri := self fullURIString asXMLURI.
	self
		deny: uri isFileURI;
		deny: uri isRelative;
		deny: uri isLocalURI;
		assert: uri scheme = self scheme;
		assert: uri host = self host;
		assert: uri path = self absolute;
		assert: uri queryString = self queryString allButFirst;
		assert: uri fragment = self fragment allButFirst.