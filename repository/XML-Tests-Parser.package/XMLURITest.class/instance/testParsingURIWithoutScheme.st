tests
testParsingURIWithoutScheme
	| uri |

	uri := self schemelessURIString asXMLURI.
	self
		deny: uri isFileURI;
		assert: uri isRelative;
		assert: uri isLocalURI;
		assert: uri scheme isEmpty;
		assert: uri host = self host;
		assert: uri path = self absolute;
		assert: uri queryString = self queryString allButFirst;
		assert: uri fragment = self fragment allButFirst.