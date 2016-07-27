enumerating
collect: aCollectBlock thenSelect: aSelectBlock
	^ self newWithCollection:
		(collection collect: aCollectBlock thenSelect: aSelectBlock)