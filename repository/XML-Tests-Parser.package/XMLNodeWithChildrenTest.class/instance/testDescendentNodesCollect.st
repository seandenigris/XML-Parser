tests
testDescendentNodesCollect
	| nodeWithNodes descendentNodes |

	nodeWithNodes := self newNodeWithNodes.
	descendentNodes := nodeWithNodes descendentNodes.
	self
		assertList: (nodeWithNodes descendentNodesCollect: [:each | each identityHash])
		collects: (descendentNodes collect: [:each | each identityHash]).

	descendentNodes do: [:node |
		(node respondsTo: #descendentNodesCollect:)
			ifTrue: [
				self
					assertList: (node descendentNodesCollect: [:each | each identityHash])
					collects: (node descendentNodes collect: [:each | each identityHash])]].