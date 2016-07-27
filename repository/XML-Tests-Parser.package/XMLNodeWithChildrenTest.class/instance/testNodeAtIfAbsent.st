tests
testNodeAtIfAbsent
	| nodeWithNodes |

	nodeWithNodes := self newNodeWithNodes.
	self assert: (nodeWithNodes nodeAt: 0 ifAbsent: [#absent]) = #absent.
	1 to: nodeWithNodes nodes size do: [:i |
		self assert:
			(nodeWithNodes
				nodeAt: i
				ifAbsent: [#absent]) == (nodeWithNodes nodes at: i)].
	self assert:
		(nodeWithNodes
			nodeAt: nodeWithNodes nodes size + 1
			ifAbsent: [#absent]) = #absent.