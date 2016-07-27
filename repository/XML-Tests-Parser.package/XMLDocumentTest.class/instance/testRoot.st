tests
testRoot
	| nodeWithElements |

	self assert: self nodeClass new root isNil.
	nodeWithElements := self newNodeWithElements.
	self assert: (nodeWithElements root isElementNamed: 'root').
	nodeWithElements removeNodes.
	self assert: nodeWithElements root isNil.
	nodeWithElements addNode: (XMLElement named: 'new-root').
	self assert: (nodeWithElements root isElementNamed: 'new-root').