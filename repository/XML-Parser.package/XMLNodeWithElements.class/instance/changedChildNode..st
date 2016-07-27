private
changedChildNode: aNode
	aNode isTag ifTrue: [self rebuildElementCache]