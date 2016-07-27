enumerating
descendantNodesCollect: aBlock
	| collectedObjects |

	collectedObjects := self newListForCollect.
	self descendantNodesDo: [:each | collectedObjects addLast: (aBlock value: each)].
	^ collectedObjects.