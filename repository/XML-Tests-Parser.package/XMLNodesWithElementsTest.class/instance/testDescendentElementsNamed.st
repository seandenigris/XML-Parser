tests
testDescendentElementsNamed
	| nodeWithElements descendentElements namedElements |

	nodeWithElements := self newNodesWithElements.
	descendentElements := nodeWithElements descendentElements.
	namedElements := nodeWithElements descendentElementsNamed: 'c1'. 
	self
		assert: namedElements size = 2;
		assertList: namedElements selects: (descendentElements
		select: [:each | each isNamed: 'c1']).

	namedElements do: [:each |
		self assert: (each descendentElementsNamed: 'c1') isEmpty]