tests
testAllButLast
	| list |

	self assert: self emptyList allButLast = self emptyList.

	list := self listWithElements.
	self
		assertList: list allButLast
		copiedFrom: list
		equals: (self listClass newFrom: self listElements allButLast).