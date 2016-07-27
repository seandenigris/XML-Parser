tests
testDescendentNodesSelect
	| nodeWithNodes descendentNodes |

	nodeWithNodes := self newNodeWithNodes.
	descendentNodes := nodeWithNodes descendentNodes.
	self
		assertList: (nodeWithNodes descendentNodesSelect: [:each | each isComment])
		selects: (descendentNodes select: [:each | each isComment]).

	descendentNodes do: [:node |
		(node respondsTo: #descendentNodesSelect:)
			ifTrue: [
				self
					assertList: (node descendentNodesSelect: [:each | each isComment])
					selects: (node descendentNodes select: [:each | each isComment])]].