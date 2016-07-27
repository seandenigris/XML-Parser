accessing
addNode: aNode after: afterNode
	^ self with: [self nodes add: aNode after: afterNode] add: aNode