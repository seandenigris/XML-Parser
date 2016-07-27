enumerating
collect: aCollectBlock thenSelect: aSelectBlock
	^ self speciesNewWithCollection:
		(collection
			collect: aCollectBlock
			thenSelect: aSelectBlock)