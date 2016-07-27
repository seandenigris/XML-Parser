tests
testCopyWithPathSegments
	self allURIStringsDo: [:each | | uri oldPathSegments newPathSegments copy |
		uri := each asXMLURI.
		oldPathSegments := uri pathSegments.
		newPathSegments := oldPathSegments copyWith: 'new'.
		copy := uri copyWithPathSegments: newPathSegments.
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
			deny: uri pathSegments = copy pathSegments;
			assert: uri pathSegments = oldPathSegments;
			assert: copy pathSegments = newPathSegments;
			assert: uri query = copy query;
			assert: uri fragment = copy fragment]