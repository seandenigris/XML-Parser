enumerating
with: aCollection collect: aBlock
	^ self copyThenSetCollection: (collection with: aCollection collect: aBlock)