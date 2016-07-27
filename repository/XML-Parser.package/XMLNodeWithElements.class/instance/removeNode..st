accessing
removeNode: aNode
	^ self with: [self remove: aNode from: self nodes] remove: aNode