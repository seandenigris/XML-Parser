enumerating
collect: aCollectBlock thenSelect: aSelectBlock
	^ self copyThenSetCollection:
		(collection collect: aCollectBlock thenSelect: aSelectBlock)