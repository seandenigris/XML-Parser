accessing
allNodes
	| allNodes |

	allNodes := self newNodeListForSelect.
	self allNodesDo: [:each | allNodes addLast: each].
	^ allNodes.