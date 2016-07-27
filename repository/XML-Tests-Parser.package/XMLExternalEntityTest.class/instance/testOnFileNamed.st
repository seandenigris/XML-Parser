tests
testOnFileNamed
	| parser fileHandle |

	self isSkipping
		ifTrue: [self skipOrReturnWith: [^ self]].

	fileHandle := self fileHandleForNewFileSuffixed: 'testOnFileNamed.xml'.
	fileHandle writeStreamDo: [:writeStream |
		writeStream nextPutAll: '<test/>'].
	self
		shouldnt: [parser := SAXHandler onFileNamed: fileHandle path]
		raise: XMLFileException.
	self
		assert: parser documentURI = fileHandle path;
		assert: parser documentURI asXMLURI isLocalURI.

	fileHandle delete.