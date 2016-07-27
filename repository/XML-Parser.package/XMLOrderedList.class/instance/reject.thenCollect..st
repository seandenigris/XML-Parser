enumerating
reject: aRejectBlock thenCollect: aCollectBlock
	^ self speciesNewWithCollection:
		(collection
			reject: aRejectBlock
			thenCollect: aCollectBlock)