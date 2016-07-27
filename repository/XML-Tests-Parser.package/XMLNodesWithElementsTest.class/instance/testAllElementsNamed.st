tests
testAllElementsNamed
	| nodeWithElements allElements namedElements |

	nodeWithElements := self newNodesWithElements.
	allElements := nodeWithElements allElements.
	namedElements := nodeWithElements allElementsNamed: 'c1'. 
	self
		assert: namedElements size = 2;
		assertList: namedElements selects: (allElements select: [:each | each isNamed: 'c1']).