tests
testOnFileNamed
	"
	(self isSkipping: false) testOnFileNamed
	"
	| parser fileName |

	self isSkipping
		ifTrue: [self skip].

	fileName := 'testOnFileNamed.xml'.
	self fileNamed: fileName write: ''.

	self
		shouldnt: [parser := SAXHandler onFileNamed: fileName]
		raise: XMLHTTPException.
	self
		assert: parser documentURI = fileName;
		assert: parser documentURI asXMLURI isLocalURI.

	self deleteFileNamed: fileName.