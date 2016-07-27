tests
testElements
	| nodeWithElmeents |

	nodeWithElmeents := self newNodeWithElements.
	self
		assertList: nodeWithElmeents elements 
		selects: (nodeWithElmeents nodes select: [:each | each isElement]).
	nodeWithElmeents allElementsDo: [:element |
		self
			assertList: element elements 
			selects: (element nodes select: [:each | each isElement])].