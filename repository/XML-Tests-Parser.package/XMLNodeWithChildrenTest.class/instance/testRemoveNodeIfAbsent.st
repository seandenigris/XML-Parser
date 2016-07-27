tests
testRemoveNodeIfAbsent
	| nodeWithNodes |

	nodeWithNodes := self newNodeWithNodes.
	nodeWithNodes nodes copy do: [:each |
		self
			assert: (nodeWithNodes includesNode: each);
			assert: (nodeWithNodes removeNode: each ifAbsent: [#absent]) == each;
			deny: (nodeWithNodes includesNode: each)].
	self deny: nodeWithNodes hasChildren.
	self assert:
		(nodeWithNodes
			removeNode: self nodeClass new
			ifAbsent: [#absent]) == #absent.