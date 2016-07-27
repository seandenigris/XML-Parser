tests
test2addingNodes
	| node children |

	node := self nodeClass new.
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
	self assertNode: node hasChildren: children.

	self
		should: [node addNode: (self nodeClass new parent: self nodeClass new)] raise: Error;
		should: [node addNode: children first] raise: Error.