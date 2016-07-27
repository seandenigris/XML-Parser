tests
testReversed
	| list |

	list := self listWithElements.
	self
		assertList: list reversed
		copiedFrom: list
		equals: (self listClass newFrom: self listElements reversed).