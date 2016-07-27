tests
testReverse
	| list |

	list := self listWithElements.
	self
		assertList: list reverse
		copiedFrom: list
		equals: (self listClass newFrom: self listElements reverse).