tests
testRoot
	| nodeWithElements documentNodes newRoot |

	self assert: self nodeClass new root isNil.

	nodeWithElements := self newNodeWithElements.
	documentNodes := nodeWithElements nodes.
	self
		assert: documentNodes size = 3;
		assert: documentNodes first isComment;
		assert: (documentNodes second isElementNamed: 'zero');
		assert: documentNodes third isComment;
		assert: nodeWithElements root == documentNodes second.

	newRoot := XMLElement named: 'new-root'.
	documentNodes at: 2 put: newRoot.
	self
		assert: (nodeWithElements root: newRoot) == nodeWithElements;
		assert: nodeWithElements root == newRoot;
		assert: nodeWithElements nodes = documentNodes.

	nodeWithElements removeNodes.
	self assert: nodeWithElements root isNil.

	self
		should: [nodeWithElements root: 'test' asXMLString]
		raise: XMLDOMException.