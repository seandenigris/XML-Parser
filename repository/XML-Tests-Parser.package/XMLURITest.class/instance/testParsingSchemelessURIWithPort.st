tests
testParsingSchemelessURIWithPort
	| uri |

	uri := self schemelessURIWithPortString asXMLURI.
	self
		deny: uri isFileURI;
		assert: uri isRelative;
		assert: uri isLocalURI;
		assert: uri scheme isEmpty;
		assert: uri userInfo isEmpty;
		assert: uri host = self host;
		assert: uri port = self port;
		assert: uri path = self absolute;
		assert: uri queryString = self queryString allButFirst;
		assert: uri fragment = self fragment allButFirst.