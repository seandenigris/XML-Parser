private
addedNode: aNode toList: aCollection
	aNode isTag ifTrue: [
		(self nodes last = aNode)
			ifTrue: [self elementCacheAdd: aNode]
			ifFalse: [self rebuildElementCache]].