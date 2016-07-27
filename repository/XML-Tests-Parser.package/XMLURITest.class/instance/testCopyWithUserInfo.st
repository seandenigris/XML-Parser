tests
testCopyWithUserInfo
	self allURIStringsDo: [:each | | uri oldUserInfo newUserInfo copy |
		uri := each asXMLURI.
		oldUserInfo := uri userInfo.
		newUserInfo := oldUserInfo, 'new'.
		copy := uri copyWithUserInfo: newUserInfo.
		self
			assert: uri = each asXMLURI;
			assert: uri uriString = each;
			assert: copy uriString isNil;
			deny: uri == copy;
			deny: uri = copy;
			assert: uri scheme = copy scheme;
			assert: uri hasAuthorityPrefix = copy hasAuthorityPrefix;
			deny: uri userInfo = copy userInfo;
			assert: uri userInfo = oldUserInfo;
			assert: copy userInfo = newUserInfo;
			assert: uri host = copy host;
			assert: uri port = copy port;
			assert: uri pathSegments = copy pathSegments;
			assert: uri query = copy query;
			assert: uri fragment = copy fragment]