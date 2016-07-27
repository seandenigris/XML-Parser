enumerating
allNodesCollect: aBlock
	| collectedNodes |

	collectedNodes := self nodes copyEmpty.
	self allNodesDo: [:each | collectedNodes addLast: (aBlock value: each)].
	^ collectedNodes.