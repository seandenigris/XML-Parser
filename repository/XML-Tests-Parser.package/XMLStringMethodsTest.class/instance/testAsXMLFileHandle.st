tests
testAsXMLFileHandle
	XMLFileHandle hasSupportedImplementation
		ifTrue: [| path fileHandle |
			path := 'test.xml'.
			fileHandle := path asXMLFileHandle.
			self
				assert: (fileHandle isKindOf: XMLFileHandle);
				assert: fileHandle path = path]