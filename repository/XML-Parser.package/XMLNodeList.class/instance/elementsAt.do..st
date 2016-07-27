enumerating
elementsAt: aName do: aBlock
	self do: [:each |
		(each isElement
			and: [each isNamed: aName])
			ifTrue: [aBlock value: each]]