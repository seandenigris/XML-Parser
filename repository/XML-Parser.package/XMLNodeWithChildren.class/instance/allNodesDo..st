enumerating
allNodesDo: aBlock
	super allNodesDo: aBlock.

	self hasChildren
		ifTrue: [self nodesDo: [:each | each allNodesDo: aBlock]]