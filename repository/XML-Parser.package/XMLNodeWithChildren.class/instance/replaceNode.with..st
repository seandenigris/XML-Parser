accessing
replaceNode: aNode with: aReplacementNode
	^ self nodes
		at: [self nodes indexOf: aNode]
		put: aReplacementNode