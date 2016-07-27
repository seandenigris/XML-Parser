tests
testDefaultDocumentURI
	| cwd documentURI |

	documentURI := (SAXHandler on: '' documentURI: 'test/test.xml') documentURI.
	self assert: documentURI = 'test/test.xml'.

	cwd := XMLFileHandle currentWorkingDirectory.
	documentURI := (SAXHandler on: '') documentURI.
	self
		assert: documentURI size > (cwd size + 1);
		assert: (documentURI copyUpToLast: $/) = cwd