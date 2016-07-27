tests
testHasRoot
	| nodeWithElements |

	self deny: self nodeClass new hasRoot.
	nodeWithElements := self newNodeWithElements.
	self assert: nodeWithElements hasRoot.
	nodeWithElements removeNode: nodeWithElements root.
	self deny: nodeWithElements hasRoot.