tests
testEquality
	self allURIStringsDo: [:each | | uri otherURI |
		uri := each asXMLURI.

		otherURI := each asXMLURI.
		self
			assert: uri = otherURI;
			assert: otherURI = uri.
		otherURI scheme: uri scheme, 'new'.
		self
			deny: uri = otherURI;
			deny: otherURI = uri.

		otherURI := each asXMLURI.
		self
			assert: uri = otherURI;
			assert: otherURI = uri.
		otherURI userInfo: uri userInfo, 'new'.
		self
			deny: uri = otherURI;
			deny: otherURI = uri.

		otherURI := each asXMLURI.
		self
			assert: uri = otherURI;
			assert: otherURI = uri.
		otherURI host: uri host, 'new'.
		self
			deny: uri = otherURI;
			deny: otherURI = uri.

		otherURI := each asXMLURI.
		self
			assert: uri = otherURI;
			assert: otherURI = uri.
		otherURI pathSegments: (uri pathSegments copyWith: 'new').
		self
			deny: uri = otherURI;
			deny: otherURI = uri.

		otherURI := each asXMLURI.
		self
			assert: uri = otherURI;
			assert: otherURI = uri.
		otherURI query:
			(uri query copy
				add: 'new' -> '';
				yourself).
		self
			deny: uri = otherURI;
			deny: otherURI = uri.

		otherURI := each asXMLURI.
		self
			assert: uri = otherURI;
			assert: otherURI = uri.
		otherURI fragment: uri fragment, 'new'.
		self
			deny: uri = otherURI;
			deny: otherURI = uri]