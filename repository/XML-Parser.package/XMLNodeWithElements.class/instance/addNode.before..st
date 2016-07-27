accessing
addNode: aNode before: beforeNode
	^ self with: [self nodes add: aNode before: beforeNode] add: aNode.