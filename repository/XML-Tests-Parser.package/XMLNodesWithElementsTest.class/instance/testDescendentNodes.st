tests
testDescendentNodes
	| nodeWithElements descendentNodes |

	nodeWithElements := self newNodesWithElements.
	descendentNodes := nodeWithElements descendentNodes.
	self
		assertList: descendentNodes
		selects: nodeWithElements allNodes allButFirst.

	descendentNodes do: [:node |
		node isElement
			ifTrue: [
				self
					assertList: node descendentNodes
					selects: node allNodes allButFirst]].