enumerating
select: aSelectBlock thenCollect: aCollectBlock
	^ self speciesNewWithCollection:
		(collection select: aSelectBlock thenCollect: aCollectBlock)