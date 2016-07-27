enumerating
select: aBlock
	^ self copyThenSetCollection: (collection select: aBlock)