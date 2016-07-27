accessing
rebuildCacheFrom: aList
	self elements removeAll.
	self elementsByName removeAll.

	aList do: [:each | each isTag ifTrue: [self cacheElement: each]].