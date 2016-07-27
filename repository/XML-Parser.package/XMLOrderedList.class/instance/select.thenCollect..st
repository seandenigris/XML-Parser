enumerating
select: aSelectBlock thenCollect: aCollectBlock
	^ self copyEmptyWithCollection:
		(collection select: aSelectBlock thenCollect: aCollectBlock)