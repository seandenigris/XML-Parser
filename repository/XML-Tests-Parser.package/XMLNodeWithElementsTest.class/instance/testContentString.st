tests
testContentString
	self
		assert: self newNodeWithNodes contentString = 'testing one testing two testing three';
		assert: (self newNodeWithNodes contentString: 'new') contentString = 'new'