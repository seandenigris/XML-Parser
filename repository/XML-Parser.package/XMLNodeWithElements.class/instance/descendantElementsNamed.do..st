enumerating
descendantElementsNamed: aName do: aBlock
	self descendantElementsDo: [:each |
		(each isNamed: aName)
			ifTrue: [aBlock value: each]]