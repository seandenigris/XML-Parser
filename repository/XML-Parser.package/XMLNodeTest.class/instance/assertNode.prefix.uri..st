assertions
assertNode: aNode prefix: aPrefix uri: aUri
	self
		assert: aNode prefix = aPrefix;
		assert: aNode namespaceURI = aUri