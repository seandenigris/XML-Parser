accessing
elementAt: aName ifAbsent: aBlock
	self do: [:each |
		(each isElementNamed: aName)
			ifTrue: [^ each]].
	^ aBlock value.