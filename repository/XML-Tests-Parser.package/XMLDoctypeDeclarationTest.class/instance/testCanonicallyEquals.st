tests
testCanonicallyEquals
	self
		assert: (self nodeClass new canonicallyEquals: self nodeClass new);
		assert: (self newNodeWithNodes canonicallyEquals: self newNodeWithNodes);
		assert: (self newNodeWithNodes canonicallyEquals: self nodeClass new)