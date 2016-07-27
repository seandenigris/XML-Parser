tests
testLastFew
	| list |

	list := self listWithElements.
	1 to: list size do: [:i |
		self
			assertList: (list last: i)
			copiedFrom: list
			equals: (self listClass newFrom: (self listElements last: i)).
		self
			assertList: (list last: list size + i)
			copiedFrom: list
			equals: self listWithElements.
		self
			assertList: (list last: (i * -1))
			copiedFrom: list
			equals: self emptyList].
	self
		assertList: (list last: 0)
		copiedFrom: list
		equals: self emptyList.