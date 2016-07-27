tests
testDefaultDocumentURI
	| cwd documentUri |

	documentUri := (SAXHandler on: '' documentURI: 'test/test.xml') documentURI.
	self assert: documentUri = 'test/test.xml'.

	cwd := XMLFileClient defaultImplementation new currentWorkingDirectory.
	documentUri := (SAXHandler on: '') documentURI.
	self
		assert: documentUri size > (cwd size + 1);
		assert: (documentUri copyUpToLast: $/) = cwd.