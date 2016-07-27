tests
testCopyWithScheme
	self allURIStringsDo: [:each | | uri oldScheme newScheme copy |
		uri := each asXMLURI.
		oldScheme := uri scheme.
		newScheme := oldScheme, 'new'.
		copy := uri copyWithScheme: newScheme.
		self
			assert: uri = each asXMLURI;
			assert: uri uriString = each;
			assert: copy uriString isNil;
			deny: uri == copy;
			deny: uri = copy;
			deny: uri scheme = copy scheme;
			assert: uri scheme = oldScheme;
			assert: copy scheme = newScheme;
			assert: uri hasAuthorityPrefix = copy hasAuthorityPrefix;
			assert: uri userInfo = copy userInfo;
			assert: uri host = copy host;
			assert: uri port = copy port;
			assert: uri pathSegments = copy pathSegments;
			assert: uri query = copy query;
			assert: uri fragment = copy fragment]