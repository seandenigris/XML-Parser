tests
testRoot
	| nodeWithElements firstNode newRoot |

	self assert: self nodeClass new root isNil.

	nodeWithElements := self newNodeWithElements.
	firstNode := XMLComment string: 'first'.
	nodeWithElements addNodeFirst: firstNode.
	self assert: (nodeWithElements root isElementNamed: 'zero').

	newRoot := XMLElement named: 'new-root'.
	nodeWithElements root: newRoot.
	self
		assert: nodeWithElements firstNode == firstNode;
		assert: nodeWithElements root == newRoot.

	nodeWithElements removeNodes.
	self assert: nodeWithElements root isNil.

	newRoot := XMLElement named: 'root'.
	self assert: (self nodeClass root: newRoot) root == newRoot.