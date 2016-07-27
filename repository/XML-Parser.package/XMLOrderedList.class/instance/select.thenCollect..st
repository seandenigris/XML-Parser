enumerating
select: aSelectBlock thenCollect: aCollectBlock
	^ self copyThenSetCollection:
		(collection select: aSelectBlock thenCollect: aCollectBlock)