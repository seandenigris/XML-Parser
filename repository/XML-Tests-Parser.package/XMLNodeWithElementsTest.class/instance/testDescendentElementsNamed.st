tests
testDescendentElementsNamed
	| nodeWithElements descendentElements namedElements |

	nodeWithElements := self newNodeWithElements.
	descendentElements := nodeWithElements descendentElements.
	namedElements := nodeWithElements descendentElementsNamed: 'four'. 
	self
		assert: namedElements size = 3;
		assertList: namedElements selects: (descendentElements
		select: [:each | each isNamed: 'four']).

	namedElements do: [:each |
		self assert: (each descendentElementsNamed: 'four') isEmpty]