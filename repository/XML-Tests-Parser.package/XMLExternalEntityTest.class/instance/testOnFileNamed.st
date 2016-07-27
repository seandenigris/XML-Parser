tests
testOnFileNamed
	| parser fileName |

	self isSkipping
		ifTrue: [self skipOrReturnWith: [^ self]].

	fileName := 'testOnFileNamed.xml'.
	self fileNamed: fileName write: ''.
	self
		shouldnt: [parser := SAXHandler onFileNamed: fileName]
		raise: XMLFileException.
	self
		assert: parser documentURI = fileName;
		assert: parser documentURI asXMLURI isLocalURI.

	self deleteFileNamed: fileName.