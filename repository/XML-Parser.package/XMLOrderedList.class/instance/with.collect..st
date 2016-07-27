enumerating
with: aCollection collect: aBlock
	^ self copyEmptyWithCollection: (collection with: aCollection collect: aBlock)