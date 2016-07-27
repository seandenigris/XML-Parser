enumerating
collect: aCollectBlock thenSelect: aSelectBlock
	^ self copyEmptyWithCollection:
		(collection collect: aCollectBlock thenSelect: aSelectBlock)