tests
testAllButFirstFew
	| list |

	list := self listWithElements.
	1 to: list size do: [:i |
		self
			assertList: (list allButFirst: i)
			copiedFrom: list
			equals: (self listClass newFrom: (self listElements allButFirst: i)).
		self
			assertList: (list allButFirst: i + list size)
			copiedFrom: list
			equals: self emptyList.
		self
			assertList: (list allButFirst: i * -1)
			copiedFrom: list
			equals: list.
		self assert: (self emptyList allButFirst: i) = self emptyList].
	self
		assertList: (list allButFirst: 0)
		copiedFrom: list
		equals: list.