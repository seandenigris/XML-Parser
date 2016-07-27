enumerating
allNodesCollect: aBlock
	| collectedNodes |

	collectedNodes := self newNodeListForCollect.
	self allNodesDo: [:each | collectedNodes addLast: (aBlock value: each)].
	^ collectedNodes.