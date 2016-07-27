tests
testParsingDomainURIWithPort
	| uri |

	uri := self domainWithPort asXMLURI.
	self
		deny: uri isFileURI;
		deny: uri isRelative;
		deny: uri isLocalURI;
		assert: uri scheme = self scheme;
		assert: uri host = self host;
		assert: uri port = self port;
		assert: uri path isEmpty;
		assert: uri queryString isEmpty;
		assert: uri fragment isEmpty.