enumerating
collect: aBlock
	^ self copyThenSetCollection: (collection collect: aBlock)