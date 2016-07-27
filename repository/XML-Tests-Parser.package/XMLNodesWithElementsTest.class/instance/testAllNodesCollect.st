tests
testAllNodesCollect
	| nodeWithElements allNodes |

	nodeWithElements := self newNodesWithElements.
	allNodes := nodeWithElements allNodes.
	self
		assertList: (nodeWithElements allNodesCollect: [:each | each identityHash])
		collects: (allNodes collect: [:each | each identityHash]).

	allNodes do: [:node |
		node isElement
			ifTrue: [
				self
					assertList: (node allNodesCollect: [:each | each identityHash])
					collects: (node allNodes collect: [:each | each identityHash])]].