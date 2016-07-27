enumerating
with: aCollection collect: aBlock
	^ self speciesNewWithCollection: (collection with: aCollection collect: aBlock)