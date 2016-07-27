assertions
assertNode: aNode hasPrefix: aPrefix uri: aUri
	self
		assert: aNode prefix = aPrefix;
		assert: aNode namespaceURI = aUri