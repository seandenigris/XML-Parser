tests
testDescendentNodes
	| nodeWithNodes descendentNodes |

	nodeWithNodes := self newNodeWithNodes.
	descendentNodes := nodeWithNodes descendentNodes.
	self
		assertList: descendentNodes
		selects: nodeWithNodes allNodes allButFirst.

	descendentNodes do: [:node |
		node canHaveChildren
			ifTrue: [
				self
					assertList: node descendentNodes
					selects: node allNodes allButFirst]].