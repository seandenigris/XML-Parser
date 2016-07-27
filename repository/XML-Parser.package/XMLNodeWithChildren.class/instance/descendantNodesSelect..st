enumerating
descendantNodesSelect: aBlock
	| selectedNodes |

	selectedNodes := self newListForSelect.
	self descendantNodesDo: [:each |
		(aBlock value: each)
			ifTrue: [selectedNodes addLast: each]].
	^ selectedNodes.