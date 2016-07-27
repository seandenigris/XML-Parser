tests
testFirstFew
	| list |

	list := self listWithElements.
	1 to: list size do: [:i |
		self
			assertList: (list first: i)
			copiedFrom: list
			equals: (self listClass newFrom: (self listElements first: i)).
		self
			assertList: (list first: list size + i)
			copiedFrom: list
			equals: self listWithElements.
		self
			assertList: (list first: (i * -1))
			copiedFrom: list
			equals: self emptyList].
	self
		assertList: (list first: 0)
		copiedFrom: list
		equals: self emptyList.