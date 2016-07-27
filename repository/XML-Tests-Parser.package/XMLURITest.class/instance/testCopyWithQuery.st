tests
testCopyWithQuery
	self allURIStringsDo: [:each | | uri oldQuery newQuery copy |
		uri := each asXMLURI.
		oldQuery := uri query.
		(newQuery := oldQuery copy) add: 'new' -> 'new'.
		copy := uri copyWithQuery: newQuery.
		self
			assert: uri = each asXMLURI;
			assert: uri uriString = each;
			assert: copy uriString isNil;
			deny: uri == copy;
			deny: uri = copy;
			assert: uri scheme = copy scheme;
			assert: uri hasAuthorityPrefix = copy hasAuthorityPrefix;
			assert: uri userInfo = copy userInfo;
			assert: uri host = copy host;
			assert: uri port = copy port;
			assert: uri pathSegments = copy pathSegments;
			deny: uri query = copy query;
			assert: uri query = oldQuery;
			assert: copy query = newQuery;
			assert: uri fragment = copy fragment]