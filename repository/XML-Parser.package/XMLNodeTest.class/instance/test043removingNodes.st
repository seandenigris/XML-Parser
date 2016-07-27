tests
test043removingNodes
	| node children |

	node := XMLMockNodeWithElements new.
	children := self newNodes: 5.
	node addNodes: children.
	self
		should: [node removeNode: children first]
		removeNode: children first
		from: node.
	self
		should: [node removeNodes: (children copyFrom: 2 to: 3)]
		removeNodes: (children copyFrom: 2 to: 3)
		from: node.
	self
		assert: node removeNodes = node;
		assert: node isEmpty.