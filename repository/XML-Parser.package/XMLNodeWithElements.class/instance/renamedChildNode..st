private
renamedChildNode: aNode
	aNode isTag ifTrue: [self rebuildElementCache]