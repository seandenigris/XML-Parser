enumerating
descendantElementsDo: aBlock
	self hasChildren
		ifTrue: [self elementsDo: [:each | each allElementsDo: aBlock]]