enumerating
allNodesCollect: aBlock
	| collectedNodes |

	collectedNodes := self nodes copyEmpty.
	self allNodesDo: [:each | collectedNodes add: (aBlock value: each)].
	^ collectedNodes.