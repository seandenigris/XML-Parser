private
removedNode: aNode fromList: aCollection
	aNode isTag ifTrue: [self elementCacheRemove: aNode].