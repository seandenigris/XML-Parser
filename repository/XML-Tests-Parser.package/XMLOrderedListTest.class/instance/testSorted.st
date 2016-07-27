tests
testSorted
	| list |

	list := self listWithElements.
	self
		assertList: list sorted
		copiedFrom: list
		equals: (self listClass newFrom: (self listElements copy sorted: self sortBlock)).
	self
		assertList: (list sorted: self reverseSortBlock)
		copiedFrom: list
		equals: (self listClass newFrom: (self listElements copy sorted: self reverseSortBlock)).