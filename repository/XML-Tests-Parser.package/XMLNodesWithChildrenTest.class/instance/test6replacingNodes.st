tests
test6replacingNodes
	| node children newChildren |

	node := self nodeClass new.
	children := self newNodes: 3.
	newChildren := self newNodes: 3.
	node addNodes: children.
	self
		should: [node replaceNode: children first with: newChildren first]
		addNode: newChildren first
		to: node.
	self
		should: [node replaceNode: children second with: newChildren second]
		addNode: newChildren second
		to: node.
	self
		should: [node replaceNode: children third with: newChildren third]
		addNode: newChildren third
		to: node.

	self assert: node nodes asOrderedCollection = newChildren asOrderedCollection.