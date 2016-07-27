tests
testParsingEmailURI
	| uri |

	uri := self emailURIString asXMLURI.
	self
		deny: uri isFileURI;
		deny: uri isRelative;
		deny: uri isLocalURI;
		assert: uri scheme = 'mailto';
		assert: uri userInfo = self userInfo;
		assert: uri host = self host;
		assert: uri port isNil;
		assert: uri path isEmpty;
		assert: uri queryString isEmpty;
		assert: uri fragment isEmpty.