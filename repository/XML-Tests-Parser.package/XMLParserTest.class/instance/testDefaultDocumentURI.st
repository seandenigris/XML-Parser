tests
testDefaultDocumentURI
	| uri |

	uri := 'test/test.xml'.
	self
		assert: (SAXHandler on: '' documentURI: uri) documentURI = uri;
		assert: (SAXHandler on: '') documentURI = ''.