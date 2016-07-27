enumerating
with: aCollection collect: aBlock
	^ self newWithCollection: (collection with: aCollection collect: aBlock)