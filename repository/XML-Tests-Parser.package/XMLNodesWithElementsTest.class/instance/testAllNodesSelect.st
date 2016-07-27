tests
testAllNodesSelect
	| nodeWithElements allNodes |

	nodeWithElements := self newNodesWithElements.
	allNodes := nodeWithElements allNodes.
	self
		assertList: (nodeWithElements allNodesSelect: [:each | each isElement])
		selects: (allNodes select: [:each | each isElement]).

	allNodes do: [:node |
		node isElement
			ifTrue: [
				self
					assertList: (node allNodesSelect: [:each | each isElement])
					selects: (node allNodes select: [:each | each isElement])]].