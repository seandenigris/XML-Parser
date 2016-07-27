as yet unclassified
sort: aSortBlock
	super sort: aSortBlock.
	self elements sort: aSortBlock.
	self elementsByName valuesDo: [:each |
		each isCollection
			ifTrue: [each sort: aSortBlock]].