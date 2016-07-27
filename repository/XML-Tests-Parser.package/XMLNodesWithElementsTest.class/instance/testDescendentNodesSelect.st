tests
testDescendentNodesSelect
	| nodeWithElements descendentNodes |

	nodeWithElements := self newNodesWithElements.
	descendentNodes := nodeWithElements descendentNodes.
	self
		assertList: (nodeWithElements descendentNodesSelect: [:each | each isElement])
		selects: (descendentNodes select: [:each | each isElement]).

	descendentNodes do: [:node |
		node isElement
			ifTrue: [
				self
					assertList: (node descendentNodesSelect: [:each | each isElement])
					selects: (node descendentNodes select: [:each | each isElement])]].