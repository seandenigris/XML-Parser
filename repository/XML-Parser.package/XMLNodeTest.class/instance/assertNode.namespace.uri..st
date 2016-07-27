assertions
assertNode: aNode namespace: aNamespace uri: aUri
	self
		assert: aNode prefix = aNamespace;
		assert: aNode namespaceURI = aUri