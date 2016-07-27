tests
testContentString
	self
		assert: self newNodeWithElements contentString = 'testing one testing two testing three';
		assert: (self newNodeWithElements contentString: 'new') contentString = 'new'