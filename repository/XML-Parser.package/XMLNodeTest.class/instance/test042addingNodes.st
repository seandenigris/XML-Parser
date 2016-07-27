tests
test042addingNodes
	| node children |

	node := XMLMockNodeWithElements new.
	children := self newNodes: 6.
	self
		should: [node addNode: children second] addNode: children second to: node;
		should: [node addNodeFirst: children first] addNode: children first to: node.
	self
		should: [node addNodes: (children copyFrom: 3 to: 4)]
		addNodes: (children copyFrom: 3 to: 4)
		to: node.
	self
		should: [node addNode: children sixth after: children fourth]
		addNode: children sixth
		to: node.
	self
		should: [node addNode: children fifth before: children sixth]
		addNode: children fifth
		to: node.

	self
		assert: node nodes asOrderedCollection = children;
		assert: node firstNode = children first;
		should: [node addNode: (XMLMockNode new parent: XMLMockNode new)] raise: Error;
		should: [node addNode: children first] raise: Error.