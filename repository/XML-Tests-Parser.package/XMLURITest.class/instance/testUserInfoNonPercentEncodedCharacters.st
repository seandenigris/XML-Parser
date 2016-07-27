tests
testUserInfoNonPercentEncodedCharacters
	| userInfo uri |

	userInfo := self unreservedCharacters, self subDelimiterCharacters, ':'.
	uri := ('mailto:', userInfo, '@', self host) asXMLURI.
	self
		assert: uri scheme = 'mailto';
		assert: uri userInfo = userInfo;
		assert: uri host = self host.