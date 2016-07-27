tests
test5accessingFirstAndLastNodes
	| node children |

	node := XMLMockNodeWithElements new.
	self
		assert: node firstNode isNil;
		assert: node lastNode isNil.

	children := self newNodes: 3.
	node addNode: children first.
	self
		assert: node firstNode == children first;
		assert: node lastNode == children first.

	node addNodes: children allButFirst.
	self
		assert: node firstNode == children first;
		assert: node lastNode == children last.

	node removeNode: children first.
	self
		assert: node firstNode == children second;
		assert: node lastNode == children last.