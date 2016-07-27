tests
testAllElementsNamed
	| nodeWithElements allElements namedElements |

	nodeWithElements := self newNodeWithElements.
	allElements := nodeWithElements allElements.
	namedElements := nodeWithElements allElementsNamed: 'four'. 
	self
		assert: namedElements size = 3;
		assertList: namedElements selects: (allElements select: [:each | each isNamed: 'four']).