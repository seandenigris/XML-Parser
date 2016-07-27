enumerating
descendentNodesSelect: aBlock
	| selectedNodes |

	selectedNodes := self newNodeListForSelect.
	self descendentNodesDo: [:each |
		(aBlock value: each)
			ifTrue: [selectedNodes addLast: each]].
	^ selectedNodes.