tests
testDefaultDocumentURI
	| cwd documentUri |

	documentUri := (SAXHandler on: '' documentURI: 'test/test.xml') documentURI.
	self assert: documentUri = 'test/test.xml'.

	cwd := XMLFileHandle defaultImplementation currentWorkingDirectoryPath.
	documentUri := (SAXHandler on: '') documentURI.
	self
		assert: documentUri size > (cwd size + 1);
		assert: (documentUri copyUpToLast: $/) = cwd.