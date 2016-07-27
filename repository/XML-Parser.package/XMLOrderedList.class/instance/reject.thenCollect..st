enumerating
reject: aRejectBlock thenCollect: aCollectBlock
	^ self "squeak doesnt have reject:thenCollect:"
		select: [:each | (aRejectBlock value: each) not]
		thenCollect: aCollectBlock