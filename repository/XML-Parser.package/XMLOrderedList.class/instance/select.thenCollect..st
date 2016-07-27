enumerating
select: aSelectBlock thenCollect: aCollectBlock
	^ self newWithCollection:
		(collection select: aSelectBlock thenCollect: aCollectBlock)