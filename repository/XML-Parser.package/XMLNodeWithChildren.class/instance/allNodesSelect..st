enumerating
allNodesSelect: aBlock
	| selectedNodes |

	selectedNodes := self nodes copyEmpty.
	self allNodesDo: [:each |
		(aBlock value: each)
			ifTrue: [selectedNodes add: each]].
	^ selectedNodes.