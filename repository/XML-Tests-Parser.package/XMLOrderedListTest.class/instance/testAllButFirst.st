tests
testAllButFirst
	| list |

	self assert: self emptyList allButFirst = self emptyList.

	list := self listWithElements.
	self
		assertList: list allButFirst
		copiedFrom: list
		equals: (self listClass newFrom: self listElements allButFirst).