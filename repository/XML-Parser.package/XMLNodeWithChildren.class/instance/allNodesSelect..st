enumerating
allNodesSelect: aBlock
	| selectedNodes |

	selectedNodes := self newNodeListForSelect.
	self allNodesDo: [:each |
		(aBlock value: each)
			ifTrue: [selectedNodes addLast: each]].
	^ selectedNodes.